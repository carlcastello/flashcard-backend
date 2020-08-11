APP_NAME = microservice



# GIT hooks documentation 
# https://www.viget.com/articles/two-ways-to-share-git-hooks-with-your-team/

git-init:
	git config core.hooksPath .githooks

init:
	export FLASK_APP=${APP_NAME} 

test:
	python3 -m unittest discover -v

install:
	pipenv install --dev && pipenv shell

migrate:
	flask db migrate

upgrade:
	flask db upgrade

downgrade:
	flask db downgrade

run:
	flask run --port 8000