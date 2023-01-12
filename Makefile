install:
	bundle install

test:
	rake test

rubocop:
	bundle exec rubocop . \
	--format junit \
	--out /tmp/rubocop-results/$(shell basename $(shell pwd))/check-results.xml

.PHONY: install test rubocop
