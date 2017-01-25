module Zoho
  module Subscriptions
    class Card < ResourceBase
      resource_attributes :card_id,
                          :last_four_digits,
                          :expiry_month,
                          :expiry_year,
                          :payment_gateway,
                          :first_name,
                          :last_name,
                          :street,
                          :city,
                          :state,
                          :zip,
                          :country,
                          :created_time,
                          :updated_time

      class << self
        def create(customer_id, attributes)
          response = Client.post resource_path(customer_id), body: attributes.to_json
          case response.code
          when 201
            new response[resource_name].slice(*attribute_names.map(&:to_s))
          else
            unexpected_response response
          end
        end

        def find(customer_id, id)
          response = Client.get "#{resource_path(customer_id)}/#{id}"

          case response.code
          when 200
              new response[resource_name].slice(*attribute_names.map(&:to_s))
          when 404, 400 # Could be a bug in the API but currently when not found the response code is 400
            raise Errors::NotFound, "cannot find #{resource_name} with id:#{id} "
          else
            unexpected_response response
          end
        end

        def destroy(customer_id, id)
          response = Client.delete "#{resource_path(customer_id)}/#{id}"
          return unexpected_response response unless response.code == 200
          response
        end

        private

        def resource_path(customer_id)
          "/customers/#{customer_id}/#{pluralized_resource_name}"
        end
      end
    end
  end
end
