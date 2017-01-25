module Zoho
  module Subscriptions
    class Coupon < RessourceBase
      resource_attributes :coupon_code,
                          :name,
                          :description,
                          :type,
                          :status,
                          :discount_by,
                          :discount_value,
                          :product_id,
                          :max_redemption,
                          :redemption_count,
                          :expiry_at,
                          :apply_to_plans,
                          :plans,
                          :apply_to_addons,
                          :addons,
                          :created_time,
                          :updated_time
    end
  end
end
