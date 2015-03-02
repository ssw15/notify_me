class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :page_url
      t.string :element_selector

      t.timestamps null: false
    end
  end
end
