  require 'csv'
namespace :db do

  task :restaurants => :environment do
    CSV.foreach("/Users/tstuart/Dropbox/yelp_data.csv", :headers => true) do |row|
      Restaurant.create!(
      	:name   => row[0],
      	:address => row[1], 
      	:city   => row[2],
        :state  => row[3],
        :phone  => row[4],
        :zip    => row[5], 
      	:rating => row[6], 
      	:review => row[7], 
      	:link   => row[8]
      	)
    end 	 
  end
end	
