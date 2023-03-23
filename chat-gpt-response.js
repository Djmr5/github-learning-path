// Importamos librerias/modulos necesarios
const http = require('http');
const { Configuration, OpenAIApi } = require("openai");
// Variables globales y ocultas
require('dotenv').config()

// Variables para crear el server
const hostname = '127.0.0.1';
const port = 3000;

// Creamos un objeto de openai
const configuration = new Configuration({
  apiKey: process.env.OPENAI_API_KEY,
});
const openai = new OpenAIApi(configuration);

// Funcion para hacer una peticion (request) con la API de openai
async function request(){
  const response = await openai.createCompletion({
      model: "text-davinci-003",
      prompt: "Explain node.js in a paragraph",
      temperature: 0,
      max_tokens: 1000
  })
  return response.data.choices[0].text;
};

// Creamos el server y mandamos la respuesta
const server = http.createServer(async (req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  let response = await request();
  res.end(response);
});

// Iniciamos el server
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});