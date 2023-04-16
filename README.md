# Express-on-Azure
Express JS app dockerized and uploaded to Azure Container Registry

This express app is a simple web app that displays a message on the browser. It is dockerized and uploaded to Azure Container Registry. The app is deployed to Azure App Service using Azure Container Registry. The app is built using Node.js and Express.js.
The app is deployed to Azure Container Instance using GitHub Actions. The action builds the docker file and pushes the image to Azure Container Registry. The action then deploys the app to Azure Container Instance. 
