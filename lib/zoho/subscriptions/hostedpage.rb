module Zoho
  module Subscriptions
    class Hostedpage < ResourceBase
      resource_attributes :hostedpage_id,
                          :status,
                          :url,
                          :action,
                          :expiring_time,
                          :created_time,
                          :custom_fields,
                          :data

      custom_singleton_action :updatesubscription, http_method: :post, send_params_through: :body
      custom_singleton_action :newsubscription, http_method: :post, send_params_through: :body
      custom_singleton_action :updatecard, http_method: :post, send_params_through: :body
      custom_singleton_action :buyonetimeaddon, http_method: :post, send_params_through: :body

    end
  end
end
