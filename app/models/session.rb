class Session < ApplicationRecord
  require 'CSV'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      session_hash = row.to_hash # exclude the price field
      session = Session.where(id: session_hash["id"])

      if session.count == 1
        session.first.update_attributes(session_hash.except("price")) # exclude the price field.
      else
        Session.create!(session_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end # end class