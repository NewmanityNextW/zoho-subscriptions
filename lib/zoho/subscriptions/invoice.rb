module Zoho
  module Subscriptions
    class Invoice < ResourceBase
      resource_attributes :invoice_id,
                          :number,
                          :status,
                          :invoice_date,
                          :due_date,
                          :payment_expected_date,
                          :ach_payement_initiated,
                          :transaction_type,
                          :customer_id,
                          :customer_name,
                          :email,
                          :invoice_items,
                          :coupons,
                          :total,
                          :payment_made,
                          :balance,
                          :credits_applied,
                          :write_off_amount,
                          :payments,
                          :currency_code,
                          :currency_symbol,
                          :created_time,
                          :updated_time,
                          :invoice_url,
                          :billing_address,
                          :shipping_address,
                          :comments
      get_other_formats [:pdf]
    end
  end
end
