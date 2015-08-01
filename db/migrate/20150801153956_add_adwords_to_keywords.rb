class AddAdwordsToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :adwords_top, :integer
    add_column :keywords, :adwords_right, :integer
    add_column :keywords, :adwords_total, :integer
    add_column :keywords, :non_adwords_results, :integer
    add_column :keywords, :total_number_of_links, :integer
    add_column :keywords, :total_search_results, :integer
    add_column :keywords, :contents, :text
  end
end
