class CreateOrganizationsUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :organizations_users do |t|
      t.belongs_to :organization, null: false, foreign_key: true

      t.boolean :is_admin?, default: false
      t.boolean :is_default?, default: false
      t.boolean :is_owner?, default: false
      t.timestamps
    end
  end
end
