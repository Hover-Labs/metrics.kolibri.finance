<template>
  <div id="app">
    <iframe
      :key="network"
      class="datadog"
      :src="`https://p.datadoghq.com/sb/e72980047-2d709421ba52ff347142795b6c9b92e2?theme=dark&tpl_var_Network=${network}`"
    />
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

enum networks {
  MAIN = 'mainnet',
  GRANADA = 'granadanet'
}

export default class MainPage extends Vue {
  private network = networks.MAIN

  mounted(): void {
    const newNetwork = this.$route.query.network
    if (Object.values(networks).includes(newNetwork as networks) && newNetwork !== 'mainnet'){
      this.network = newNetwork as networks
    } else {
      // Redirect without any query to default to mainnet
      this.$router.push(this.$route.path)
    }
  }
}
</script>

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
