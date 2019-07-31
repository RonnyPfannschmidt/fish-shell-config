# Defined in - @ line 2
function cloc-at-date --description 'does a git checkout at the passed YYYY-MM-DD date, runs cloch and returns to the prior checkout'
	if set RETURN_BRANCH (git symbolic-ref --short HEAD)
		set THE_DATE $argv[1]
		git checkout (git rev-list -n 1 --first-parent --before="$THEDATE 23:59" master)
		cloc $argv[2..-1]
		git checkout $RETURN_BRANCH
	else
		echo "not checked out at a branch, ignoring the magic"
	end
end
