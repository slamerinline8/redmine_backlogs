class AddReleasesIndexes < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    add_index :issues, :release_id
    add_index :issues, :release_relationship
    add_index :releases, :project_id
    add_index :releases, :status
    add_index :releases, :release_start_date
    add_index :releases, :release_end_date
  end

  def self.down
    remove_index :issues, :column => :release_id
    remove_index :issues, :column => :release_relationship
    remove_index :releases, :column => :project_id
    remove_index :releases, :column => :status
    remove_index :releases, :column => :release_start_date
    remove_index :releases, :column => :release_end_date
  end
end

