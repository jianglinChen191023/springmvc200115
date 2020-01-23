<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/17
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index200117.css"/>
    <script src="${pageContext.request.contextPath}/js/vue/vue.js" type="text/javascript" charset="UTF-8"></script>
</head>

<body>
<h1>欢迎来到20年01月17号学习首页</h1><br/><br/>

<h2>vue.js: </h2>
<div id="app">
    {{ message }}
</div>

<br/>

<div id="app-2">
  <span v-bind:title="message">
    鼠标悬停几秒钟查看此处动态绑定的提示信息！
  </span>
</div>

<br/>

<div id="app-3">
    <p v-if="seen">现在你看到我了</p>
</div>

<br/>

<h6>v-for 指令可以绑定数组的数据来渲染一个项目列表：</h6>
<div id="app-4">
    <ol>
        <li v-for="todo in todos">
            {{ todo.text }}
        </li>
    </ol>
</div>

<br/><br/>
<h6>为了让用户和你的应用进行交互，我们可以用 v-on 指令添加一个事件监听器，通过它调用在 Vue 实例中定义的方法：</h6>
<div id="app-5">
    <p>{{ message }}</p>
    <button v-on:click="reverseMessage">反转消息</button>
</div>

<br/>
<h6>Vue 还提供了 v-model 指令，它能轻松实现表单输入和应用状态之间的双向绑定。</h6>
<div id="app-6">
    <p>{{ message }}</p>
    <input v-model="message">
</div>

<br/>
<ol>
    <!-- 创建一个 todo-item 组件的实例 -->
    <todo-item></todo-item>
</ol>

<br/>
<div id="app-7">
    <ol>
        <!--
          现在我们为每个 todo-item 提供 todo 对象
          todo 对象是变量，即其内容可以是动态的。
          我们也需要为每个组件提供一个“key”，稍后再
          作详细解释。
        -->
        <todo-item
                v-for="item in groceryList"
                v-bind:todo="item"
                v-bind:key="item.id"
        ></todo-item>
    </ol>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>

<br/><br/>
<h2>潭州课堂: </h2>
<div id="tanzhoDiv">
    <%-- 无序列表 --%>
    <ul>
        <li>
            <%-- 图片标签 --%>
            <img src="${pageContext.request.contextPath}/images/1.jpg" title="" alt="画书" alt="聪明又可爱的女孩"/>
        </li>
        <li>
            <%-- 图片标签 --%>
            <img src="${pageContext.request.contextPath}/images/2.jpg" title="" alt="画书" alt="聪明又可爱的女孩"/>
        </li>
        <li>
            <%-- 图片标签 --%>
            <img src="${pageContext.request.contextPath}/images/3.jpg" title="" alt="画书" alt="聪明又可爱的女孩"/>
        </li>
        <li>
            <%-- 图片标签 --%>
            <img src="${pageContext.request.contextPath}/images/4.jpg" title="" alt="画书" alt="聪明又可爱的女孩"/>
        </li>
    </ul>
</div>


<script type="text/javascript">
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue!'
        }
    });

    var app2 = new Vue({
        el: '#app-2',
        data: {
            message: 'Hello Vue!'
            // message: '页面加载于 ' + new Date().toLocaleString()
        }
    });

    var app3 = new Vue({
        el: '#app-3',
        data: {
            seen: true
        }
    });

    var app4 = new Vue({
        el: '#app-4',
        data: {
            todos: [
                {text: '学习 JavaScript'},
                {text: '学习 Vue'},
                {text: '整个牛项目'}
            ]
        }
    });

    var app5 = new Vue({
        el: '#app-5',
        data: {
            message: 'Hello Vue.js!'
        },
        methods: {
            reverseMessage: function () {
                this.message = this.message.split('').reverse().join('')
            }
        }
    });

    var app6 = new Vue({
        el: '#app-6',
        data: {
            message: 'Hello Vue!'
        }
    });

    Vue.component('todo-item', {
        props: ['todo'],
        template: '<li>{{ todo.text }}</li>'
    });

    var app7 = new Vue({
        el: '#app-7',
        data: {
            groceryList: [
                {id: 0, text: '蔬菜'},
                {id: 1, text: '奶酪'},
                {id: 2, text: '随便其它什么人吃的东西'}
            ]
        }
    });


    // 我们的数据对象
    var data = { a: 1 }

    // 该对象被加入到一个 Vue 实例中
    var vm = new Vue({
        data: data
    })

    // 获得这个实例上的属性
    // 返回源数据中对应的字段
    vm.a == data.a // => true

    // 设置属性也会影响到原始数据
    vm.a = 2
    data.a // => 2

    // ……反之亦然
    data.a = 3
    vm.a // => 3
</script>

</body>
</html>
