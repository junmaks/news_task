import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Antd from 'ant-design-vue';
import 'ant-design-vue/dist/antd.css';
import './assets/styles.scss'
import vClickOutside from 'v-click-outside'


const app = createApp(App).use(router, Antd, vClickOutside).mount('#app');

