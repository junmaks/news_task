import db from '../db.js'

const News = db.News
const Country = db.Country

class NewsController {
    async createNews(req, res) {
        try {
            const {title, description_news, category_id, country_id} = req.body
            let newNews = await News.build({title: title, description_news: description_news, category_id: category_id, country_id: country_id })
            newNews.save()
            res.json("OK")
        } catch (e) {
            console.log(e)
        }
    }
    async getNews(req, res) {
        let newsArray = []
        const newsList = await News.findAll();

        for (let newsInt in newsList) {
            const country = await Country.findAll({where: {id: newsList[newsInt].country_id}})
            let news_obj = {
                'news_id': newsList[newsInt].news_id,
                'description_news': newsList[newsInt].description_news,
                'title': newsList[newsInt].title,
                'country_id': country[0].id,
                'country_name': country[0].name_country,
                'category_id': newsList[newsInt].category_id
            }
            newsArray.push(news_obj)
        }
        res.send(newsArray)
    }
    async getNewsOne(req, res) {
        
    }
    async updateNews(req, res) {

    }

    async deleteNews(req, res) {

    }
    async getByCategory(req, res) {
        try {
            const {category_id} = req.params
            let newsArray = []
            const newsList = await News.findAll({where: {category_id: category_id}})
            for (let newsInt in newsList) {
                const country = await Country.findAll({where: {id: newsList[newsInt].country_id}})
                let news_obj = {
                    'news_id': newsList[newsInt].news_id,
                    'description_news': newsList[newsInt].description_news,
                    'title': newsList[newsInt].title,
                    'country_id': country[0].id,
                    'country_name': country[0].name_country,
                    'category_id': newsList[newsInt].category_id
                }
                newsArray.push(news_obj)
            }
            res.json(newsArray)
        } catch (e) {
            console.log(e)
        }
    }
    async getByCountry(req, res) {
        try {
            const {country_id} = req.params
            const newsList = await News.findAll(
                {where: 
                    {
                        country_id: country_id
                    }
                })
            res.json(newsList)
        } catch (e) {
            console.log(e)
        }
    }
}


export default new NewsController();