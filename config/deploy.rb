set :user, 'ejpres'
set :domain, 'nordmeyer.name'
set :application, "team"

#file paths
set :repository,  "#{user}@#{domain}:git/#{application}.git"
set :deploy_to, "/var/www/rails/#{application}"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, domain                      # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

# options

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :repository, "git@github.com:27sparks/team.git"  # Your clone URL
set :scm, "git"
set :scm_passphrase, "hatepunk"  # The deploy user's password

set :rake, "/usr/local/bin/rake"
set :deploy_via, :remote_cache
set :branch, 'master'
set :scm_verbose, true
set :use_sudo, false


namespace :deploy do
	desc "cause Passenger to initiate a restart"
	task :restart do
		run "touch #{current_path}/tmp/restart.txt"
	end
end

after "deploy:update_code", :bundle_install
desc "install the necessary prerequisites"
task :bundle_install, :roles => :app do
	run "cd #{release_path} && bundle install"
end


# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end