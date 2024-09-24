class RenameSlackDmToSlackLinkInStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :slack_dm, :slack_link
  end
end
