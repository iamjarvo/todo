load "deploy/assets"
set :application, "todo"
set :repository,  "~/code-box/ecofactor/todo/.git"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm, :git



role :web, "default"
role :app, "default"
set :use_sudo, false
set :user, "vagrant"
#set :run_method, :sudo
set :deploy_to, "~/todo"
set :deploy_via, "copy"
set :keep_releases, 5
#
## Must be set for the password prompt from git to work
# default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:config] = '.ssh.config'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 #namespace :deploy do
   #task :start do ; end
   #task :stop do ; end
   #task :restart, :roles => :app, :except => { :no_release => true } do
     #run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   #end
 #end
