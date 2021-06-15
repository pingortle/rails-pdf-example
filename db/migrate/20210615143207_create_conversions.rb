class CreateConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :conversions do |t|
      t.string :source_url

      t.timestamps
    end
  end
end
