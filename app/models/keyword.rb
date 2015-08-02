class Keyword < ActiveRecord::Base

  def self.import(file)
    require 'open-uri'
    require 'nokogiri'
    CSV.foreach(file.path, headers: true) do |row|

      data = row.to_hash
      url = "https://www.google.com/search?q=#{data['keywords'].gsub(" ", "+")}"
      doc = Nokogiri::HTML(open(url))

      data['adwords_right'] = doc.css("#rhs_block").search("li.ads-ad").count
      data['adwords_top'] = doc.css("#center_col").search("li.ads-ad").count
      data['adwords_total'] = data['adwords_top'] + data['adwords_right']

      Keyword.create! data
    end
  end
end
