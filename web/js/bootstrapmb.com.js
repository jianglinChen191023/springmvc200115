$(function () {
    // nav收缩展开
    $('.nav-item>a').on('click', function () {
        // 如果.nav 不包含nav-mini样式(正常菜单列表,如果是迷你状态的菜单列表跳过无效果)
        if (!$('.nav-left').hasClass('nav-mini')) {

            // 如果此元素的下个元素ul是隐藏的(如果是展开的跳过,无效果)
            if ($(this).next().css('display') == "none") {
                /*
                * 1. 先以滑动的方式隐藏所有的ul列表(三级菜单)
                * 2. 几乎同时以滑动展开这个a元素(二级菜单)下面的三级菜单(ul列表)
                * 3. 为此元素的父级元素li添加nav-show样式并移除所有兄弟的nav-show样式
                * */

                //展开未展开
                // 类nav-item下的所有ul元素以滑动方式隐藏 单位毫秒
                $('.nav-item').children('ul').slideUp(300);

                // 这个a元素的下一个ul元素以滑动方式显示 单位毫秒
                $(this).next('ul').slideDown(300);

                // 这个a元素的父元素li 添加nav-show样式 所有同级的li元素移除nav-show
                $(this).parent('li').addClass('nav-show').siblings('li').removeClass('nav-show');
            } else {
                //收缩已展开
                // 这个a元素(二级菜单)的下一个ul元素(三级菜单)以滑动的方式隐藏 单位毫秒
                $(this).next('ul').slideUp(300);
                // 移除nav-show样式
                $('.nav-item.nav-show').removeClass('nav-show');
            }

        }
    });

    //nav-mini切换（切换为迷你菜单列表）
    $('#mini').on('click', function () {
        // 如果菜单列表(.nav)不是迷你样式(nav-mini), 1.切换迷你模式时隐藏三级菜单 2.添加迷你样式
        if (!$('.nav-left').hasClass('nav-mini')) {
            // 切换迷你模式时隐藏三级菜单
            $('.nav-item.nav-show').removeClass('nav-show');
            $('.nav-item').children('ul').removeAttr('style');
            // 添加迷你(nav-mini)样式
            $('.nav-left').addClass('nav-mini');
        } else {
            // 如果已经是迷你菜单,移除迷你样式,恢复正常菜单模式
            $('.nav-left').removeClass('nav-mini');
        }
    });
});
