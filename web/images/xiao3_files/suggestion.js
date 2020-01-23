(function(a){a.Options=new Class({Extends:a.Base,options:{tag:"ul","class":"options",item:"",width:80,wait:true},initialize:function(c){this.ignores=[];this.selectedIndex=-1;this.items=[];this.parent(c)},build:function(){var c=this.options;this.element=new Element(c.tag,{"class":c["class"]}).setStyles({position:"absolute",left:0,top:0,visibility:"hidden",width:c.width}).inject(document.body);this.bound={click:this.onClick.bindWithEvent(this),keyup:this.onKeyup.bindWithEvent(this),hide:this.hide.bindWithEvent(this)};this.attach()},attach:function(){this.element.addEvent("click",this.bound.click)},detach:function(){this.element.removeEvent("click")},onClick:function(g){var f=document.id(g.target);if(f.get("tag")!="a"){f=f.getParent("a")}g&&g.preventDefault();var c=f.get("html").replace(/<[^>]+>[^<]+<[^>]+>/g,""),d=this;this.items.some(function(e,h){if(e.text==c){d.selectItem(h);return true}return false});this.hide()},onKeyup:function(d){var c=Event.Keys;switch(d.code){case c.up:this.selectItem(this.selectedIndex-1);break;case c.down:this.selectItem(this.selectedIndex+1);break;case 35:this.selectItem(this.items.length-1);d.stop();break;case 36:this.selectItem(0);d.stop();break;case c.enter:if(this.selectedIndex!=-1){this.fireEvent("select",this)}this.hide();break;default:break}},selectItem:function(d){if(this.selectedIndex==d){return}var c=this.items.length;if(d<0){d=c+d}else{if(d>=c){d-=c}}if(this.selectedIndex!=-1){this.items[this.selectedIndex].normal()}this.items[this.selectedIndex=d].select();this.fireEvent("change",this)},show:function(c){if(!this.items.length){return this.hide()}if(c){this.element.setStyles(c)}this.element.visible();document.addEvent("click",this.bound.hide);document.addEvent("keyup",this.bound.keyup);this.fireEvent("show")},hide:function(c){if(c){if(!this.ignores.contains(c.target)||c.target==document.body){this.element.hideit();this.fireEvent("hide");document.removeEvent("keyup",this.bound.keyup);document.removeEvent("click",this.bound.hide)}}else{this.element.hideit();this.fireEvent("hide");document.removeEvent("keyup",this.bound.keyup)}},addIgnores:function(){this.ignores.extend(Array.slice(arguments))},addItem:function(g,c,d,f){if(d){this.selectedIndex=this.items.length}var e=new a.Options[this.options.item+"Item"]({text:g,value:c,selected:d,other:f});this.items.push(e);e.inject(this.element)},addItems:function(){var d=this.items,c=this;Array.slice(arguments).each(function(e){d.push(e);e.inject(c.element)})},newItems:function(c){this.element.empty();this.items=[];this.addItems.apply(this,arguments);this.selectedIndex=-1},setItemType:function(c){if(a.Options[c+"Item"]){this.options.item=c}},toggle:function(d,c){if(this.element.getStyle("visibility")=="hidden"){if(d){var e=d.getCoordinates();c={left:e.left,top:e.top+e.height+2}}this.show(c)}else{this.hide()}},getValue:function(){return this.selectedIndex>-1?this.items[this.selectedIndex].value:""},getText:function(){return this.selectedIndex>-1?this.items[this.selectedIndex].text:""}});a.Options.Item=new Class({Extends:a.Base,options:{tag:"a",text:"",value:"","class":"item",selected:false,selectedClass:"selected",highlightClass:"highlight"},build:function(){var c=this.options;this.element=new Element(c.tag).addClass(c["class"]);this.text=c.text;this.value=c.value;this.selected=c.selected;delete c.text;delete c.value;delete c.selected;this.setHtml();this.attach();if(this.selected){this.select()}},attach:function(){},detach:function(){},setHtml:function(){this.element.set("html",this.text)},select:function(){this.element.addClass(this.options.selectedClass)},normal:function(){this.element.removeClass(this.options.selectedClass)}});a.Options.SuggestionItem=new Class({Extends:a.Options.Item,options:{tag:"li"},setHtml:function(){this.element.set("html",'<a href="/search/'+this.options.other+"="+this.text+'">'+this.text+"<span>�� "+this.value+" ��ͼ��</span></a>")}});a.Options.SuggestionIconItem=new Class({Extends:a.Options.SuggestionItem,setHtml:function(){this.element.set("html",'<a href="/search/'+this.options.other+"="+this.text+'">'+this.text+"<span>�� "+this.value+" �����</span></a>")}});a.DropDownList=new Class({Extends:a.Base,options:{wait:true,tag:"div","class":"dropdownlist",selectedClass:"selected"},initialize:function(c,d){this.element=c;this.parent(d)},build:function(){var e=this.options;var c=this.source=document.id(this.element).hide();this.element=new Element("a",{href:"#","class":e["class"]}).set("html",'<input type="input" readonly="readyonly" /><div></div>').inject(c,"before");this.arrow=this.element.getLast();this.input=this.element.getFirst();this.bound={show:this.onShow.bind(this),hide:this.onHide.bind(this),change:this.onChange.bind(this)};this.fix=Browser.Engine.trident&&Browser.Engine.version<5;if(this.fix){this.bound.over=this.onOver.bindWithEvent(this);this.bound.out=this.onOut.bindWithEvent(this)}var d=new a.Options({width:this.input.offsetWidth+this.arrow.offsetWidth-2,tag:e.tag}).addEvents(this.bound);Array.each(c.options,function(f){d.addItem(f.text,f.value,f.selected)});this.menu=d;this.menu.addIgnores(this.element,this.arrow,this.input);this.input.value=d.getText();this.bound.click=this.onClick.bindWithEvent(this);this.attach()},attach:function(){this.element.addEvent("click",this.bound.click);if(this.fix){this.menu.element.addEvents({mouseover:this.bound.over,mouseout:this.bound.out})}},detach:function(){this.element.removeEvent("click",this.bound.click);if(this.fix){this.menu.element.removeEvents({mouseover:this.bound.over,mouseout:this.bound.out})}},onOver:function(d){var c=document.id(d.target);if(c.get("tag")=="a"){c.addClass("current")}},onOut:function(d){var c=document.id(d.target);if(c.get("tag")=="a"){c.removeClass("current")}},onClick:function(c){c&&c.preventDefault();this.menu.toggle(this.input)},onShow:function(){this.element.addClass(this.options.selectedClass)},onHide:function(){this.element.removeClass(this.options.selectedClass)},onChange:function(){this.input.value=this.menu.getText();this.source.selectedIndex=this.menu.selectedIndex},selectItem:function(c){this.menu.selectItem(c)},get:function(c){var d=this.menu["get"+c.capitalize()];return d?d.call(this.menu):null}});var b={};a.Suggestion=new Class({Extends:a.Base,options:{url:"",tag:"ul","class":"suggest",data:{},delay:300,wait:true},initialize:function(c,d){this.element=c;if(d){this.getKey=d.getKey||this.getKey;this.isChanged=d.isChanged||this.isChanged;delete d.getKey;delete d.isChanged}this.parent(d)},build:function(){var c=this.options;this.bound={keyup:this.onKeyup.bindWithEvent(this),complete:this.onComplete.bind(this),focus:this.onFocus.bind(this),change:this.onChange.bind(this)};this.boxFix=Browser.Engine.trident;this.element=document.id(this.element).set("autocomplete","off");this.menu=new a.Options({"class":c["class"],width:this.element.offsetWidth,item:"Suggestion",tag:c.tag});this.menu.addIgnores(this.element);this.key=this.getKey();this.attach()},attach:function(){this.element.addEvents({keyup:this.bound.keyup,focus:this.bound.focus});this.menu.addEvent("change",this.bound.change)},detach:function(){this.element.removeEvents({keyup:this.bound.keyup,focus:this.bound.focus,blur:this.bound.blur});this.menu.removeEvent("change",this.bound.change)},getKey:function(){return this.element.value.trim()},searchCache:function(){if(b[this.key]){return{status:1,data:b[this.key]}}var e=this.key.length,f=this.key,d=this.constructor.prototype.getKey.call(this);while(--e>1){f=this.key.substring(0,e);if(b[f]&&b[f][d]){var c={status:1,data:{}};c.data[d]=b[f][d];return c}}return null},isChanged:function(){var c=this.element.value.trim();return c!=""&&c==this.key},onKeyup:function(d){if(d&&(d.key=="up"||d.key=="down")||!this.isChanged()){return true}this.key=this.getKey();$clear(this.timer);var c=this.searchCache();if(c){this.onComplete(c)}else{this.timer=this.request.delay(this.options.delay,this)}},onComplete:function(f){if(!b[this.key]){b[this.key]=f.data}if(f.status==1){var e=[],g=document.id("type").value,c=this.element.value,d=this.menu;
d.newItems();d.setItemType(document.id("type").selectedIndex==3?"SuggestionIcon":"Suggestion");Hash.each(f.data,function(i,h){d.addItem(h,i,h==c,g)});this.showMenu()}},onFocus:function(){this.key=this.getKey();if(b[this.key]){this.onComplete({status:1,data:b[this.key]})}else{if(this.element.value.trim()!=""){this.timer=this.request.delay(this.options.delay,this)}}},onChange:function(){this.element.value=this.menu.getText()},request:function(){if(this.element.value.trim()==""){return}this.fireEvent("request");try{if(!this.xhr){this.xhr=new Request.JSON({onComplete:this.bound.complete})}this.xhr.send({url:this.options.url,data:this.options.data})}catch(c){}},showMenu:function(){var c=this.element.getCoordinates();this.menu.show({left:c.left,top:c.top+c.height,width:c.width-(this.boxFix?2:0)})}})})(using("IconKu.UI"));var types=new IconKu.UI.DropDownList("type",{"class":"dropdownlist"});var sg=new IconKu.UI.Suggestion("key",{url:"/keysstartwith",getKey:function(){return types.get("value")+"-"+this.element.value.trim()},isChanged:function(){return this.element.value.trim()!=""&&this.key!=this.getKey()},onRequest:function(){this.options.data={key:this.element.value.trim(),type:document.id("type").selectedIndex+1}}});