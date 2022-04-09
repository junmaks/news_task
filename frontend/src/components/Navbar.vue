<template>
  <div class="navbar">
      <div class=navbar__title>
          <h2>News</h2>  
      </div>
  </div>
</template>

<script>

import { Button } from 'ant-design-vue';
const ButtonGroup = Button.Group;


export default {
  name: 'Navbar',
  props: {
    msg: String
  },
  components: {
    AButton: Button,
    AButtonGroup: ButtonGroup,
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">

.navbar {
    width: 100%;
    height: 50px;
    background: rgb(16, 16, 51);
    display: flex;
    align-items: center;
    justify-content: left;

    &__title {
        padding: 10px;
        height: 100%;
        & h2 {
          color: white;
        }
    }
}


</style>
