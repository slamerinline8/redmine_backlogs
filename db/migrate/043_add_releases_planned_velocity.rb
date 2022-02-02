class AddReleasesPlannedVelocity < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    add_column :releases, :planned_velocity, :float
  end

  def self.down
    remove_columns :releases, :planned_velocity
  end
end
