# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "~/www/stagelight/forthlight/current/"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "~/www/stagelight/forthlight/current/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "~/www/stagelight/forthlight/current/log/unicorn.log"
stdout_path "~/www/stagelight/forthlight/current/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.[stagelight].sock"
listen "/tmp/unicorn.stagelight.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30