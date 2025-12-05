until ros2 topic echo /clock ; do
    echo "Waiting for simulation time..."
    sleep 1
done
echo 'end'