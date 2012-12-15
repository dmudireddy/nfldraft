namespace :import do

  desc "Import CSV Data."
  task :import => :environment do

    require 'csv'

    csv_file_path = '/home/divya/Documents/AptanaStudio3Workspace/nfldraft/nfldraft/db/teams.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Team.create!({
          :teamname => row[0],
          :division => row[1]
        }
      )

    end

  end

end
