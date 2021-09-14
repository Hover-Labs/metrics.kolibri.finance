<template>
  <div id="app">
    <iframe class="datadog" src="https://p.datadoghq.com/sb/e72980047-2d709421ba52ff347142795b6c9b92e2?theme=dark&tpl_var_Network=mainnet" />
  </div>
</template>

<style lang="scss">
.datadog {
 height: 100vh;
 width: 100vw;
 border: none;
}

body {
  margin: 0;
}

#app {
  height: 100vh;
  width: 100vw;
}
</style>
