namespace :db do
  desc "TODO"
  task backup: :environment do
  system "mysqldump --opt --user=root --password=root userdetails> xyz.sql"
  end

  desc "TODO"
  task restore: :environment do
  system "mysqldump --user=root --password=root  < xyz.sql"
  end

end


#namespace :backup do
 # desc "Backup database"
 # task :db do
 #   RAILS_ENV = "development" if !defined?(RAILS_ENV)
 #   app_root = File.join(File.dirname(__FILE__), "..", "..")
    
  #  settings = YAML.load(File.read(File.join(app_root, "config", "database.yml")))[RAILS_ENV]
 #   output_file = File.join(app_root, "..", "backup", "#{settings['database']}-#{Time.now.strftime('%Y%M%d')}.sql")
    
 #   system("/usr/bin/env mysqldump -u #{settings['username']} -p#{settings['password']} #{settings['database']} > #{output_file}")
 # end
#end