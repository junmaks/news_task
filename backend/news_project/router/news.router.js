import Router from "express";
import newsController from "../controller/news.controller.js";
const router = new Router()


router.post('/news', newsController.createNews)
router.get('/news', newsController.getNews)
router.get('/news/by_category/:category_id', newsController.getByCategory)
router.get('/news/by_country/:country_id', newsController.getByCountry)
router.get('/news/:id', newsController.getNewsOne)
router.put('/news/:id', newsController.updateNews)
router.delete('/news/:id', newsController.deleteNews)



export default router
