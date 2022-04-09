import { Sequelize, DataTypes } from 'sequelize';
const sequelize = new Sequelize('postgres://maxim:123@localhost:5432/news_db') // Example for postgres


const News = sequelize.define('news', {

  news_id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull: false,
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false
  },
  description_news: {
    type: DataTypes.STRING,
    allowNull: false
  },
  category_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  country_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  }
}, {
  timestamps: false
});


const Category = sequelize.define('categories', {

  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull: false
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false
  },
  description_categoty: {
    type: DataTypes.STRING,
    allowNull: false,
  }
}, {
  timestamps: false
});


const Country = sequelize.define('countries', {

  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull: false,
  },
  name_country: {
    type: DataTypes.STRING,
    allowNull: false
  },
  description_country: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  timestamps: false
});



console.log(News === sequelize.models.news); // true
console.log(Category === sequelize.models.categories); // true
console.log(Country === sequelize.models.countries); // true




export default { News, Category, Country }
