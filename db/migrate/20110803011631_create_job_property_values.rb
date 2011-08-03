class CreateJobPropertyValues < ActiveRecord::Migration
  def self.up
    create_table :job_property_values do |t|
      t.integer :job_id
      t.integer :job_property_id
      t.integer :value

      t.timestamps
    end
  end

  def self.down
    drop_table :job_property_values
  end
end
