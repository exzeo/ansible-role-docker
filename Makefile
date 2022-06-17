install:
	pipenv install --dev --three

shell: install
	pipenv shell

test: install
	pipenv run molecule test