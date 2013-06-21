require 'rvm/capistrano'
require "bundler/capistrano"
load "deploy/assets"
set :application, "todo"

#set :repository, '~/todo/.git'
#set :local_repository, "file://."
#set :scm, :none
#set :repository, "."
#set :deploy_via, :copy

## set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
## Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`



#server "localhost", :web, :app, :db, :primary => true
#ssh_options[:port] = 2222
#ssh_options[:keys] = "~/.vagrant.d/insecure_private_key"

#set :user, "vagrant"
#set :group, "vagrant"
#set :deploy_to, "~/todo"
#set :use_sudo, false



set :scm, :none
set :repository, "."

server "localhost", :web, :app, :db, :primary => true

ssh_options[:port] = 2222
ssh_options[:keys] = "~/.vagrant.d/insecure_private_key"

set :user, "vagrant"
set :group, "vagrant"
set :deploy_to, "~/todo"
set :use_sudo, false

set :deploy_via, :copy
#set :copy_strategy, :export



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
