class ChangeTotalSearchResultsInKeywords < ActiveRecord::Migration
  def change
    change_column :keywords, :total_search_results, :string
  end
end
