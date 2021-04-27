[alias]
	u = pull
	p = push
	sclone = clone --depth=1
	unstage = reset HEAD --
	last = log -1 HEAD
	rma = !git ls-files --deleted -z | xargs -0 -r git rm
	deleted = !git ls-files --deleted -z
	forget = update-index --assume-unchanged
	unforget = update-index --no-assume-unchanged
	forgetten = ! git ls-files -v | grep ^[a-z]


[core]
	excludesfile = ~/.gitignore
	fileMode = false

[pager]
	# insanely beautiful diffs ==> npm install -g diff-so-fancy
	diff = diff-so-fancy | less --tabs=4 -RFX
	show = diff-so-fancy | less --tabs=4 -RFX

[push]
	default = current

[url "git@github.com:"]
	pushInsteadOf = "github:"
	pushInsteadOf = "git://github.com/"
	pushInsteadOf = "https://github.com/"
	insteadOf = https://github.com/

[url "git@gitlab.com:"]
	pushInsteadOf = "gitlab:"
	pushInsteadOf = "git://gitlab.com/"
	pushInsteadOf = "https://gitlab.com/"