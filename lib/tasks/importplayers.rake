namespace :importplayers do

  desc "Import CSV Data."
  task :import => :environment do

    require 'csv'

    csv_file_path = '/home/divya/Documents/AptanaStudio3Workspace/nfldraft/nfldraft/db/players.csv'


    CSV.foreach(csv_file_path, :headers =>true) do |row|

      p = Player.create!({
          :playername => row[0],
          :position => row[1]
        }
      )

    end

  end
end