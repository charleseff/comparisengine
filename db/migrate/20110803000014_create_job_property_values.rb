class CreateJobPropertyValues < ActiveRecord::Migration
  def change
    create_table :job_property_values do |t|
      t.integer :job_id
      t.integer :job_property_id
      t.integer :value

      t.timestamps
    end
  end
end
