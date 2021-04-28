test:
	coverage run --concurrency=multiprocessing -m pytest tests -vx || exit 1
	coverage combine
	coverage report --include=lib/*.py
	coverage html --include=lib/*.py