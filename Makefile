install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib test_*.py

format:	
	black *.py 

lint:
	ruff check *.py mylib/*.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	#deploy goes here
		
all: install lint test format deploy

generate_and_push:
	# Create the markdown file 
	python test_main.py 

	# Add, commit, and push the generated files to GitHub
	@if [ -n "$$(git status --porcelain)" ]; then \
		git config --local user.email "action@github.com"; \
		git config --local user.name "GitHub Action"; \
		git add .; \
		git commit -m "Add SQL log"; \
		git push; \
	else \
		echo "No changes to commit. Skipping commit and push."; \
	fi

extract:
	etl_query extract

transform_load: 
	etl_query transform_load

query:
	etl_query general_query "Select Year, Month, Day_Of_Month, sum(births) as The_Number_of_Birth FROM birth1 INNER JOIN birth2 ON birth1.id = birth2.id Group By Year, Month, Day_Of_Month ORDER BY The_Number_of_Birth Desc LIMIT 10"
setup_package: 
	python setup.py develop --user