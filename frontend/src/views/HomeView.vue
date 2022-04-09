<template>
  <div class="home">
    <navbar/>
    <home-page/>
  </div>
</template>

<script>
// @ is an alias to /src
import News from '@/components/News.vue'
import Navbar from '@/components/Navbar.vue'
import HomePage from '@/components/HomePage.vue'

export default {
  name: 'HomeView',
  components: {
    News,
    Navbar,
    HomePage,
  }
}
</script>

<style scoped lang="scss">
  .home {
    height: 100%;
    width: 100%;
    overflow-y: hidden;

  }
</style>
