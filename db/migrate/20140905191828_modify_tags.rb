class ModifyTags < ActiveRecord::Migration
  def change
    remove_column :tags, :taggable_id
    remove_column :tags, :taggable_type
  end
end
