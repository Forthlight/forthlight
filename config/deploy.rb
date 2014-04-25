
# config valid only for Capistrano 3.2
lock '3.2.0'
set :rvm1_ruby_version, "ruby-2.1.0"
set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '2.1.0'      # Defaults to: 'default'
set :rvm_custom_path, '´~/jodg11/.rvm/'  # only needed if not detected


#set :linked_dirs, %w{tmp/pids tmp/sockets log}
set :application, 'forthlight'
set :repo_url, 'https://github.com/Forthlight/forthlight.git'
set :stages, ["staging", "production"]
set :default_stage, "staging"
set :ssh_options, {:forward_agent => true}


 #Default branch is :master
  #ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

 #Default deploy_to directory is /var/www/my_app


 #Default value for :scm is :git
 set :scm, :git 
 set :user, 'jodg11'
 set :use_sudo, false
 set :rails_env, "production"
 set :deploy_via, :remote_cache
 set :keep_releases, 5
 set :pty, true

  task :bundle_list do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, "list"
        end
      end
    end
  end