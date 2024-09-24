class FixSlackColumn < ActiveRecord::Migration[7.0]
  def change
    if column_exists?(:students, :slack_dm)
      rename_column :students, :slack_dm, :slack_link
    end
  end
end
