echo "waiting for stucco queue to empty... this can take a long time."
touch /stucco/queue_size.log
while ! grep -q [[:space:]]0 /stucco/queue_size.log; do rabbitmqctl list_queues | grep stucco-in-structured >> /stucco/queue_size.log; sleep 300;done