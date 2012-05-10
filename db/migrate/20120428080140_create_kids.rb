class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :mom_first
      t.string :dad_first
      t.string :email_mom
      t.string :email_dad
      t.datetime :icec_start
      t.datetime :icec_end

      t.timestamps
    end
  end
end
