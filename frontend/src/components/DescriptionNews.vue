
<template>
  <div class="description-page" @dblclick="$emit('close')" title = "Double click - close">
      <div class="description-page__wrapper">
        <div class="description-page__wrapper-title">
        <p>{{news_object.title}}</p>
        </div>
        <div class="description-page__wrapper-description">
            <p>{{news_object.description_news}}</p>
        </div>
      </div>
  </div>
</template>

<script>
import vClickOutside from 'v-click-outside'


export default {
    name: 'DescriptionNews',
    directives: {
      clickOutside: vClickOutside.directive
    },
    props: ["news_object", ],
    data() {
        return {
            
    }
  }
}   
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.description-page {
  height: 40%;
  width: 40%;
  padding: 0;
  position: absolute;
  background-color: #e9f4ff;
  top: 30%;
  left: 40%;
  border-radius: 10px;
  border: 1px solid black;
  overflow-y: auto;
  &p {
      color: #000;
  }
  &::-webkit-scrollbar {
  width: 4px;
  }
  &::-webkit-scrollbar-track {
    display: none;
  }
  &::-webkit-scrollbar-thumb {
    background-color: #1890ff;
    border-radius: 20px;
  }
  &__wrapper{
      &-title {
          width: 100%;
          text-align: center;
          font-size: 1.3rem;
          font-weight: bold;
      }
      &-description {
          overflow: hidden;
          font-size: 1.2rem;
          text-align: left;  
          margin: 10px;
          text-align: justify;
      }
  }
}

</style>


