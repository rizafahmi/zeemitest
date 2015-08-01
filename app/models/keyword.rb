class Keyword < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Keyword.create! row.to_hash
    end
  end
end
