import axios from 'axios'
import config from './config.json';

const environmentConfig = config['development'];

export default {
    get_news() {
        const path = environmentConfig.baseUrl + '/api/news'
        const headers = {
            'Content-Type': 'application/json',
          };
        return axios.get(path, {crossDomain: true}).then(
            (response) => response,
        )
    },
    get_categories() {
        const path = environmentConfig.baseUrl + '/api/category'
        return axios.get(path,).then(
            (response) => response,
        );
    },
    get_countries() {
        const path = environmentConfig.baseUrl + '/api/country'
        return axios.get(path,{crossDomain: true}).then(
            (response) => response,
        );
    },
    get_news_by_category(id) {
        const path = environmentConfig.baseUrl + `/api/news/by_category/${id}`
        return axios.get(path,).then(
            (response) => response,
        );
    },
    get_news_by_country(id) {
        const path = environmentConfig.baseUrl + `/api/news/by_country/${id}`
        return axios.get(path,).then(
            (response) => response,
        );
    },
}
