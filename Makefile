LIST  = COMPLETIONS

$(LIST): src/*
	fgrep compdef src/* | gawk '{ $$1 = ""; gsub(/=| /, "\n"); print }' | sort -u > $(@)

show:
	column $(LIST)

clean:
	-rm -f $(LIST)

.PHONY: show clean
