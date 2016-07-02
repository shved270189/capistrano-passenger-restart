namespace :passenger do
  desc 'Restart Passenger'
  task :restart do
    on roles(:app) do
      execute "touch #{current_path}/tmp/restart.txt"
    end
  end
end
