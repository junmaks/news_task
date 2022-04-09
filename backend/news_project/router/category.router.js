import Router from "express";
import categoryController from "../controller/category.controller.js";

const router = new Router()


router.post('/category', categoryController.addCategory)
router.get('/category', categoryController.getCategories)
router.get('/category/:id', categoryController.getCategoryOne)
router.put('/category/:id', categoryController.updateCategory)
router.delete('/category/:id', categoryController.deleteCategory)



export default router;
