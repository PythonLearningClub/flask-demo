## Running Flask app locally  
Requires Flaks installed. Use Poetry to fulfill dependencies and start a shell inside venv.  
Since name of the file containing Flask app is not `app.py`, first we need to set environment variable `FLASK_APP` to the name of our app.  
`export FLASK_APP=hello`  
After that app can by run using command:  
`flask run`  
Page should be accessible at [localhost](127.0.0.1:5000)

## Running Flask app in Docker container  
That's the challenge.  
Pay attention to the next caveats:  
* Poetry has its own dependecies    
* Poetry is needed to resolve dependencies, but venv is not needed in container — its an isolated environment already.  
* Host machine is considered to be outside connection by container, so `localhost` or `127.0.0.1` adress won't work with contanerized flask app  
* Make sure you don't need to type entire build and run command every time 

## Repo restirctions  
Commiting to the master can't be disabled in free plan. Please use your own branch for solutions. 

### Additional info  
* [Flask Quickstart guide](https://flask.palletsprojects.com/en/2.1.x/quickstart/)  
* [Poetry configuration using environment variables](https://python-poetry.org/docs/configuration/#using-environment-variables)  
* [Makefile tutorial](https://makefiletutorial.com/)  
