import db from '../db.js'

const Category = db.Category


class CategoryController {
    async addCategory(req, res) {
        try {
            const {title, description_categoty} = req.body
            let newCategory = Category.build({title: title, description_categoty: description_categoty})
            await newCategory.save()
            res.json("OK")
        } catch (e) {
            console.log(e)
        }
    }
    async getCategories(req, res) {
        const categories = await Category.findAll();
        res.json(categories)
    }
    async getCategoryOne(req, res) {
        
    }
    async updateCategory(req, res) {

    }

    async deleteCategory(req, res) {

    }
}

export default new CategoryController();