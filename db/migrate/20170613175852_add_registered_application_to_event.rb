class AddRegisteredApplicationToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :registered_application, index: true, foreign_key: true
  end
end
