const swaggerAutogen = require('swagger-autogen')()

const doc = {
    definition: {
        openapi: "3.0.0",
        info: {
            title: "İlaç Takip Sistemi API",
            version: "2.0.0",
            description: "ITS API Swagger",
        },
        servers: [
            {
                url: "http://localhost:3000",
            },
        ],
        components: {
            securitySchemes: {
                bearerAuth: {
                    type: "http",
                    name: "x-auth-token",
                    scheme: "bearer",
                    in: "header",
                },
            },
        },
        security: [
            {
                bearerAuth: [],
            },
        ],
    },
    apis: ["../api/router/index.js"],
}

const outputFile = './swagger-output.json'
const endpointsFiles = ['../api/router/index.js']

swaggerAutogen(outputFile, endpointsFiles, doc).then(() => {
    require('../app.js')           // Your project's root file
})