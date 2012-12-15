namespace :importorder do

  desc "Import CSV Data."
  task :import => :environment do

    require 'csv'

    csv_file_path = '/home/divya/Documents/AptanaStudio3Workspace/nfldraft/nfldraft/db/order.csv'

    CSV.foreach(csv_file_path, :headers =>true) do |row|

      o = Order.create!({
          :round => row[0],
          :pick => row[1],
          :team => row[2]
          
        }
      )

    end

  end

end