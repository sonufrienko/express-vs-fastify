module.exports = {
  apps: [
    {
      name: "Fastify server",
      script: "./server.js",
      instances: "max",
      env: {
        NODE_ENV: "production"
      }
    }
  ]
};
