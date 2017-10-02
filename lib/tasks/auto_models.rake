require 'csv'
namespace :import do
  desc "import sessions from CSV"
  task sessions: :environment do
    filename=File.join Rails.root, "session_history.csv"
    CSV.foreach (filename) do |row|
      p row
    end
  end
end