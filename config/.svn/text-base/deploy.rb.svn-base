set :application, "r2"

set :repository,  "svn+ssh://eric@172.16.13.156/Users/Shared/svnrepo/#{application}"
set :deploy_to,   "/Library/WebServer/#{application}"
set :deploy_via,  :export

set :scm_username, "eric"
set :scm_password, "misatomi"

ssh_options[:forward_agent] = true
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "172.16.13.156"
role :web, "172.16.13.156"
role :db,  "172.16.13.156", :primary => true

set :mongrel_cmd, "/usr/bin/mongrel_rails_persist"
set :mongrel_ports, 3000..3003

set :user, "eric"
set :group, "admin"

namespace :deploy do
  
  desc "Start Mongrel processes and add them to launchd."
  task :start, :roles => :app do
    mongrel_ports.each do |port|
      sudo "#{mongrel_cmd} start -p #{port} -e production --prefix /r2 --user #{user} --group #{group} -c #{current_path}"
    end  
  end
  
  desc "Stop Mongrels processes and remove them from launchd."
  task :stop, :roles => :app do
    mongrel_ports.each do |port|
      sudo "#{mongrel_cmd} stop -p #{port}"
    end  
  end
  
  desc "Restart Mongrel processes"
  task :restart, :roles => :app do
    stop
    start
  end  
    
end

default_run_options[:pty] = true