import express from "express";

import newsRouter from './router/news.router.js'
import categoryRouter from './router/category.router.js'
import countryRouter from './router/country.router.js'
import cors from 'cors'


const PORT = process.env.PORT || 5000;

const app = express()


app.use(express.json())
app.use(cors())

app.use('/api', newsRouter)
app.use('/api', categoryRouter)
app.use('/api', countryRouter)


async function startApp() {
    try {
        app.listen(PORT, () => console.log('SERVER STARTED ON PORT', PORT))
    } catch(e) {
        console.log(e)
    }
}

startApp() 
