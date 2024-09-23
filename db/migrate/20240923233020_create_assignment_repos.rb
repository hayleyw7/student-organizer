class CreateAssignmentRepos < ActiveRecord::Migration[7.0]
  def change
    create_table :assignment_repos do |t|
      t.references :student, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.string :repo_url

      t.timestamps
    end
  end
end
