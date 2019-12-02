# Github Supercross

## Requirements

[Node.js](https://nodejs.org) is required to install dependencies and run scripts via `npm`.

## Available Commands

| Command | Description |
|---------|-------------|
| `npm install` | Install project dependencies |
| `npm run dev` | Build project in development mode and open web server running project (listening on localhost:8080) |
| `npm run build` | Builds code bundle with production settings (minification, uglification, etc..) |
| `npm start` | Run the project into an http server listening on localhost:8080 |

## Docker for production

First, you have to create a dotenv file and insert the env variables needed:
```
$ cp .env.example .env
```
Make sure docker is running, then you can run the following commands:

| Command | Description |
|---------|-------------|
| `docker-compose -f docker-compose.prod.yml up --build -d` | Create a container: Install project dependencies, Builds code bundle with production settings and run the server listening on localhost and the container port (defined on the dotenv file)  |
| `docker-compose -f docker-compose.prod.yml down` | shutdown the container  |

## Stack:
- A Phaser 3 project template
- ES6 support via [Babel 7](https://babeljs.io/)
- [Webpack 4](https://webpack.js.org/)
- that includes hot-reloading for development and production-ready builds.
- Loading images via JavaScript module `import` is also supported.