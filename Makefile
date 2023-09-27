########################################################################################################################
# Quality checks
########################################################################################################################

test:
	poetry run pytest --cov private_gpt --cov-report term --cov-report=html --cov-report xml --junit-xml=tests-results.xml

black:
	poetry run black . --check

ruff:
	poetry run ruff check private_gpt tests

fix:
	poetry run black .
	poetry run ruff check private_gpt tests --fix

mypy:
	poetry run mypy private_gpt

run:
	poetry run python -m private_gpt