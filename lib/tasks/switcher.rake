begin 

  namespace :rspec do
    task :before_run do
      require(File.join(RAILS_ROOT, 'config', 'environment', 'test'))
      system 'rvm current'
    end
    
    desc 'Run specs in ruby environment for better performance'
    task :run => :environment do
      puts "Rails.env is #{Rails.env}"
      # system "execute mysql script here"
    end
  end

rescue
end