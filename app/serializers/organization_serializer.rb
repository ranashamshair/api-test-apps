class OrganizationSerializer < ActiveModel::Serializer
  attributes *[
    :id,
    :bk_organization_id,
    :source_uuid,
    :transactions_summarized_count,
    :summarized_net_sales,
    :journal_entry_template,
    :json_diff,
    :connection_id,
    :short_summary,
    :source_raw_data,
    :apify_run_url,
    :bk_external_id,
    :post_raw_data,
    :status,
    :created_at,
    :updated_at
  ]
end
