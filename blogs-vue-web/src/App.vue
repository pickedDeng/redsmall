<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<style lang="less">
body,ul,li,ol,dl,dd,h1,h2,h3,h4,h5,h6,input,p{ margin:0;}
ul,ol { padding:0;}
img { border:none;}
.clear{zoom:1;}
.clear:after{display:block; content:"";clear:both; visibility:hidden; height:0;}   /*清除浮动*/
a{text-decoration:none;}
li{list-style:none;}
html,body,#app{
  height: 100%;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background: url("./assets/main-bg.jpg");
  background-size: 100% 100%;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
