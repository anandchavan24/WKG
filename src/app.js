let app = require('express');
require('dotenv').config();
let express = app();
let cors = require('cors')
const args = process.argv.splice(2)
const port = args[1].split('=')[1];
const env = args[0]
const logger = require("./config/logger");
express.use(cors())
express.use(app.json())
const routes = require('./api/router/index');

const swaggerUi = require('swagger-ui-express')
const swaggerFile = require('./swagger/swagger-output.json')

express.use('/', routes);

express.use('/doc', swaggerUi.serve, swaggerUi.setup(swaggerFile))

express.listen(port || 3000, () => {
    console.log("server listning at port 3000")
});

