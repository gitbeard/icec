class CreateTopsQualifiers < ActiveRecord::Migration
  def change
    create_table :tops_qualifiers do |t|
      t.integer :type_id
      t.integer :value_id
      t.string :value_name

      t.timestamps
    end
  end
end
