LIST  = COMPLETIONS

all: $(LIST)

$(LIST): src/*
	fgrep compdef src/* | gawk '{ $$1 = ""; gsub(/=.*| /, "\n"); print }' | sort -u > $(@)

show:
	column $(LIST)

clean:
	-rm -f $(LIST)

.PHONY: all show clean
