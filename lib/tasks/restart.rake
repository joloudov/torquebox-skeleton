desc "Restart torquebox application runtime components: all, web, jobs, messaging, services, stomplets"
task restart: :environment do
  runtimes = [:all, :web, :jobs, :messaging, :services, :stomplets]
  runtime = ARGV.last
  task runtime do
    if runtimes.include? runtime.to_sym
      require 'fileutils'
      FileUtils.touch( File.join(Rails.root, "/tmp", "restart-#{runtime}.txt") )
      puts "Restarting runtime '#{runtime}'"
    else
      puts "ERROR: Unknown runtime ''#{runtime}'\n"
      puts "Available runtimes are: ''#{runtimes.join(', ')}'"
    end
  end
end
