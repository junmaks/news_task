<template>
  <a-layout class="home-page">
    <a-layout>
      <a-layout-sider width="200" style="background: #fff">
        <a-menu
          mode="inline"
          :style="{ height: '100%', borderRight: 0 }"
        >
          <a-sub-menu key="sub1">
            <template #title>
              <span style="font-size: 1.2rem">
                 Categories
              </span>
            </template>
              <a-menu-item @click="selectedKey='All'">All News</a-menu-item>
              <div v-for="category_obj in categories" :key="category_obj.id">
                <a-menu-item @click="selectedKey=category_obj.id" :key="category_obj.id">{{category_obj.title}}</a-menu-item>
              </div>
          </a-sub-menu>
        </a-menu>
      </a-layout-sider>
      <a-layout style="padding: 0 24px 24px">
        <a-layout-content
          :style="{ background: '#fff', padding: '24px', margin: 0, minHeight: '280px',  }"
        >
          <news :selectedKey=selectedKey />
        </a-layout-content>
      </a-layout>
    </a-layout>
  </a-layout>
</template>


<script>
import { UserOutlined, LaptopOutlined, NotificationOutlined } from '@ant-design/icons-vue';
import { BreadcrumbItem } from 'ant-design-vue';
import { LayoutHeader } from 'ant-design-vue';
import { Menu } from 'ant-design-vue';
import { MenuItem } from 'ant-design-vue';
import { LayoutSider } from 'ant-design-vue';
import { SubMenu } from 'ant-design-vue';
import { Breadcrumb } from 'ant-design-vue';
import { Layout } from 'ant-design-vue';
import { LayoutContent } from 'ant-design-vue';
import { defineComponent, ref } from 'vue';
import News from '@/components/News.vue'
import newsApi from '../routers_api/news_api'


export default defineComponent({
  components: {
    ALayout: Layout,
    AMenu: Menu,
    ALayoutHeader: LayoutHeader,
    AMenuItem: MenuItem,
    ALayoutSider: LayoutSider,
    ASubMenu: SubMenu,
    ABreadcrumbItem: BreadcrumbItem,
    ABreadcrumb: Breadcrumb,
    ALayout: Layout,
    ALayoutContent: LayoutContent,
    UserOutlined,
    LaptopOutlined,
    NotificationOutlined,
    News,
  },

  data() {
    return {
      selectedKey: 'All',
    }
  },
  async mounted() {
    let res = await newsApi.get_categories()
    this.categories = res.data
  },
});
</script>
<style lang="scss">

.home-page {
  height: 100%;
  width: 100%;
  overflow-y: hidden;
}

#components-layout-demo-top-side-2 .logo {
  float: left;
  width: 120px;
  height: 31px;
  margin: 16px 24px 16px 0;
  background: rgba(255, 255, 255, 0.3);
}

.ant-row-rtl #components-layout-demo-top-side-2 .logo {
  float: right;
  margin: 16px 0 16px 24px;
}

.site-layout-background {
  background: #fff;
}
</style>