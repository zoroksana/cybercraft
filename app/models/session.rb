class Session < ApplicationRecord
  require 'CSV'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      session_hash = row.to_hash

    end
    end
  end
