class CreateJobProperties < ActiveRecord::Migration
  def self.up
    create_table :job_properties do |t|
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :job_properties
  end
end
