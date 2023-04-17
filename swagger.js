import swaggerAutogen from "swagger-autogen";

const outputFile = "./swagger-output.json";
const endpointsFiles = ["./routers/*.js"];

swaggerAutogen(outputFile, endpointsFiles);