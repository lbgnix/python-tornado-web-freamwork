#You should fork/clone this repository to use as a basis for the development environment.

Subject of this is to setup a robust, production ready and developer friendly Continuous Deployment pipeline for the given demo application.

The demo application can be found in this repository and the Docker image for the deployment will be created by yourself for you to work with.

The requirements are as follows:

- Choose an appropriate CI/CD tool.
- Use a container technology of your own choosing for the demo application.
- Setup a continuous deployment pipeline for the containerized demo application with your chosen CI/CD tool.
  - It should contain at least a testing and a deployment stage.
  - It should only be deployed if the testing stage, which runs the demo applications tests, is successful.
- Setup a development environment which mirrors the production environment as closely as possible.
- Think about scalability and performance.

## Demo application

### Requirements

#### System

- GNU/Linux
- `python` >= 3.7
- `pip` >= 9.0
- `redis` >= 5.0

`>=` means any version of the package, above or equal to the specified version.

#### Application

- `redis-py`
- `tornado`

You can find them in the `requirements.txt` file and their required version number.
You can install them by using:

```bash
pip3 install -r requirements.txt
```

### :rocket: Starting the Application

The application uses several environment variables.
You can find them all and their default values in the `.env` file. They need to be avaiable at runtime. Here is an overview about the environment variables:

- `ENVIRONMENT` the environment in which the application is run. Likely `PROD` for production or `DEV` for development context.
- `HOST` the hostname on which the application is running. Locally it is `localhost`.
- `PORT` is the port on which the application is running.
- `REDIS_HOST` is the hostname on which redis is running. Locally it is `localhost`.
- `REDIS_PORT` is the port on which to communicate with redis. Normally it is `6379`.
- `REDIS_DB` which redis db should be used. Normally it is `0`.

Application can be found in `app.py` file. You can start the application by using:

```bash
export $(cat .env | xargs) && python3 app.py
```

Although you don't have to export the environment variables that way. :wink:

### Static files

- Static files are located in `static/` folder.
- Templates are located in `template/` folder.

### Executing Tests

Tests can be found in `tests/test.py` file.
You can run the tests by using:

```bash
python tests/test.py
```

## Contributing

We love contributions from everyone. By participating in this project, you can follow me on my Linkden https://www.linkedin.com/in/lalbahadur-vishwakarma-2780bb27/ 

We expect everyone to follow the code of conduct anywhere in `DevOps-Challenge`'s project codebases, issue trackers, chatrooms, and mailing lists.<br/>
Thank you, [contributors]!




We love free software!
