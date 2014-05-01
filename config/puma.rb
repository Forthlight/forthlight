rails_env = ENV['RAILS_ENV'] || 'staging'

threads 4,4

bind  "unix:///data/apps/forthlight/shared/tmp/puma/forthlight.sock"
pidfile "/data/apps/appname/current/tmp/puma/pid"
state_path "/data/apps/appname/curresnt/tmp/puma/state"

activate_control_app