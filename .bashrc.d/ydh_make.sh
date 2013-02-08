ydh_make()
{
	package=`basename $(pwd)`
	version=1.0
	command="dh_make -c gpl -i --native -p ${package}_${version}"
	echo $command
	$command
	rm -f debian/*.ex debian/*.EX debian/README* debian/copyright
	#origin=`git config remote.origin.url`
}
