set :application, "puzzle15"
set :repository,  "git@github.com:Irostovsky/15puzzle.git"

set :scm, :git
set :deploy_via, :copy
set :copy_strategy, :export

set :deploy_to, "/var/www/apps/puzzle15"

set :deploy_by_user, 'root@'

set :use_sudo, true

set :ip, '173.203.201.62'
role :app, "#{deploy_by_user}#{ip}"
role :web, "#{deploy_by_user}#{ip}"
role :db,  "#{deploy_by_user}#{ip}", :primary => true

namespace :deploy do
  task :restart, :roles => :app do
    run "chown  -R www-data #{current_path}/"
    run "touch #{current_path}/tmp/restart.txt"
  end
end
