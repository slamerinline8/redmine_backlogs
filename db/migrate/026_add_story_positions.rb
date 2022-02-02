class AddStoryPositions < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    # Rails doesn't support temp tables, mysql doesn't support update
    # from same-table subselect

    unless RbStory.trackers.size == 0
      max = 0
      execute("select max(position) from issues").each{|row| max = row[0]}

      execute "update issues
               set position = #{max} + id
               where position is null and tracker_id in (#{RbStory.trackers(:type=>:string)})"
    end
  end

  def self.down
    puts "Reverting irreversible migration"
  end
end
