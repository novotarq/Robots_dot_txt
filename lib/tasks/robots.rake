namespace :robots do
  desc "Install robots"
  task :install => :environment do
    ["app/controllers/robots_controller.rb","config/robots.yml"].each do |file_path|
      copy_file( "#{File.expand_path(File.dirname(__FILE__))}/../#{file_path}", "#{Rails.root}/#{file_path}", :copy_the_file ) unless File.exists?("#{Rails.root}/#{file_path}")
    end
  end
end