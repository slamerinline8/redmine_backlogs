class AddReleaseRelationshipToIssues < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
      add_column :issues, :release_relationship, :string, :default => 'auto', :null => false
  end
  
  def self.down
    remove_column :issues, :release_relationship
  end
end
