set :default_stage, 'stage'
set :deploy_to, "/var/deploy/#{application}/#{default_stage}"
set :rails_env, default_stage