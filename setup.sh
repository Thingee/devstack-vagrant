DIR='/opt/stack';

for f in `ls $DIR`;
do
    if [ "$f" != "data" ] && [ "$f" != "status" ]
    then
	echo "Updating $f"
        cd $DIR/$f && git pull
    fi
done

su vagrant -c "/opt/stack/devstack/stack.sh"
