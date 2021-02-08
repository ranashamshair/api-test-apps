class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :bk_organization_id
      t.string :source_uuid
      t.integer :transactions_summarized_count
      t.float :summarized_net_sales
      t.string :journal_entry_template
      t.text :json_diff
      t.string :connection_id
      t.string :short_summary
      t.string :source_raw_data
      t.string :apify_run_url
      t.string :bk_external_id
      t.jsonb :post_raw_data
      t.string :status

      t.timestamps
    end
  end
end
