echo "PATH"
echo $PATH
echo "RUBY VERSION FILE"
catver=`cat .ruby-version | sed s/-//g`
echo $catver
echo "RUBY VERSION EXEC"
rubyver=`ruby --version | awk '{ print $2 }'`
echo $rubyver

if [ $catver == $rubyver ]; then
	exit 0
else
	exit 1
fi
