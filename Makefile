LIST  = COMPLETIONS

COLUMN = column
AWK    = gawk
FGREP  = /bin/grep -F

$(LIST): src/*
	$(FGREP) compdef src/* | $(AWK) '{ $$1 = ""; print }' | sed 's/ /\n/g' | $(AWK) 'BEGIN { FS = "=" } length() > 0 { print $$1 }' > $(@)

show:
	cat $(LIST) | $(COLUMN)

clean:
	-rm -f $(LIST)

.PHONY: show clean
