class Api::ApisController < ApplicationController
  def testing
    org = Organization.where(source_uuid: params[:source_uuid]).first
    if org.present?
      org.update(request_params)
    elsif request_params.reject { |key,value| value == "" || value == nil }.present?
      org = Organization.new(request_params)
      org.source_uuid = SecureRandom.uuid
      org.save
    end
    if org.present? && org.errors.blank?
      render json: {status: 200, data: OrganizationSerializer.new(org) }, status: :ok
    elsif org.present? && org.errors.present?
      render json: {status: 422, message: org.errors.messages}, status: :unprocessable_entity
    else
      render json: {status: 422, message: "Please enter some data"}, status: :unprocessable_entity
    end
  end

  private
    def request_params
      params.permit(
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
      :status)
    end
end
