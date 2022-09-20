notebook:
	poetry run jupyter notebook

black:
	poetry run black .

mypy:
	poetry run mypy data2day_2022

pylint:
	poetry run pylint data2day_2022

test:
	poetry run pytest tests

pre-commit-install:
	poetry run pre-commit install

check: black mypy pylint test
