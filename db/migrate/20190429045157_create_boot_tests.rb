class CreateBootTests < ActiveRecord::Migration[5.1]
  def change
    create_table :boot_tests do |t|
      t.text :content
      t.timestamps
    end
  end
end
