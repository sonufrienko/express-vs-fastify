module.exports = {
  apps: [
    {
      name: "Express server",
      script: "./server.js",
      instances: "max",
      env: {
        NODE_ENV: "production"
      }
    }
  ]
};
