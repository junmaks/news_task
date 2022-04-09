<template>
  <div class="news-page">
    <div class="news-page__table">
      <div v-if="news_list.length" class="news-page__table__header">
        <div class="news-page__table__header-country" >Country</div>
        <div class="news-page__table__header-title" >Title</div>
        <div class="news-page__table__header-description"><span>Description</span></div>
      </div>
        <div v-for="news_obj in news_list" :key="news_obj.news_id" class="news-page__table__body" 
        @click="news_object=news_obj, descriptionNews=!descriptionNews"
        title="Open">
          <div class="news-page__table__body-country"><p maxlength="20">{{news_obj.country_name}}</p></div>
          <div class="news-page__table__body-title"><p maxlength="20">{{news_obj.title}}</p></div>
          <div class="news-page__table__body-description"><p maxlength="10">{{news_obj.description_news}}</p></div>
      </div>
    </div>
      <description-news v-if="descriptionNews" 
      :news_object=news_object 
      @close="descriptionNews=false"/>
  </div>
</template>

<script>

import DescriptionNews from '@/components/DescriptionNews.vue'
import newsApi from '../routers_api/news_api'


export default {
  name: 'News',
  components: {
    DescriptionNews
  },
  props: ['selectedKey'],
  data() {
    return {
      newsData: true,
      news_list: [],
      descriptionNews: false,
      };
  },
   async mounted() {
      let res = await newsApi.get_news()
      this.news_list = res.data
  },
  watch: {
    selectedKey: async function () {
      if(this.selectedKey === 'All') {
        let res = await newsApi.get_news()
        this.news_list = res.data
      } else {
        let res = await newsApi.get_news_by_category(this.selectedKey)
        this.news_list = res.data
      }
    },
  }

}
</script>

<style scoped lang="scss">
.news-page {
  height: 100%;
  padding-bottom: 15px;
  overflow-y: auto;
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
  &__table {
    border-radius: 15px;
    overflow-x: hidden;
    &__header {
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 1.3rem;
      color: white;
      background-color: #1890ff;
      &-description {
        width: 60%;
      }
      &-title {
        width: 20%; 
      }
      &-country {
        width: 20%; 
      }
    }
    
    &__body {
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 1.1rem;
      background-color: rgb(247, 247, 247);
      cursor: pointer;
      &:hover {
        background-color: #e9f4ff;

      }
      &-description {
        width: 50%;
        padding-top: 10px;
        padding-bottom: 10px;
      }
      &-title {
        width: 30%; 
        padding-top: 10px;
        padding-bottom: 10px;
      }
      &-country {
        width: 20%; 
        padding-top: 10px;
        padding-bottom: 10px;
      }
      & p {
        margin: 10px;
        word-break: break-all;
        white-space: nowrap;
        overflow-x: hidden;
      }
    }
  }
}
</style>


