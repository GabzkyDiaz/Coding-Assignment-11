# Running the React App Locally with Docker

This guide will walk you through the steps to set up and run the React app locally using Docker. 
You'll learn how to get the web application running on `localhost:7775` (`127.0.0.1:7775`).

## Prerequisites

Before you begin, ensure you have the following installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)

## Steps

1. **Create React App**

    Create a new React app using `create-react-app`:

    ```
    npx create-react-app my-app
    ```

2. **Insert Title**

    Open `App.js` and insert an `<h1>` tag with the text "Codin 1".

3. **Create Dockerfile**

    Create a file named `Dockerfile` in the root directory of your React app, and add the following content:

    ```Dockerfile
    FROM node:lts-iron

    WORKDIR /lastName_firstName_site/

    COPY public/ /lastName_firstName_site/public
    COPY src/ /lastName_firstName_site/src
    COPY package.json /lastName_firstName_site/

    RUN npm install

    CMD ["npm", "start"]
    ```

4. **Build Docker Image**

    Open Git Bash and navigate to the root directory of your React app. Then, build the Docker image:

    ```
    docker image build -t lastName_firstName_coding_assignment11:latest .
    ```

5. **Run Docker Container**

    Run the Docker container with port mapping:

    ```
    docker run -dp 7775:3000 --name lastName_firstName_coding_assignment11 lastName_firstName_coding_assignment11:latest
    ```

6. **Access the App**

    Open your web browser and navigate to [http://localhost:7775](http://localhost:7775) to view the running React app.

## Notes

- Port `7775` is mapped to the React app's default port `3000` within the Docker container. You can change the local port as needed.
- Ensure that Docker Desktop is running on your system before executing Docker commands.






# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
