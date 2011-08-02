class CreateJobProperties < ActiveRecord::Migration
  def change
    create_table :job_properties do |t|
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
