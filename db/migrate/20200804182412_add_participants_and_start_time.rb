class AddParticipantsAndStartTime < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :participants, integer
    add_column :events, :start_time, datetime
  end
end
