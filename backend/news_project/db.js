import Sequelize from 'sequelize';
import NewsModels from './models/news.js'
// import Category from './models/category.model.js'
// import Country from './models/country.modal.js'

// Connect to database
const sequelize = new Sequelize(`postgres://${process.env.PGUSER}:${process.env.PGPASSWORD}@${process.env.PGHOST}:${process.env.PGPORT}/${process.env.PGDATABASE}`)




const db = {
    sequelize: Sequelize,
    News: NewsModels.News,
    Category: NewsModels.Category,
    Country: NewsModels.Country
}

export default db