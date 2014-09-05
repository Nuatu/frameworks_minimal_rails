class CreateFrameworksLanguages < ActiveRecord::Migration
  def change
    create_table :frameworks_languages do |t|
      t.integer :framework_id
      t.integer :language_id
      t.timestamps
    end
  end
end
