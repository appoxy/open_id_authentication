require 'base64'
module OpenIdAuthentication
    class Association < SimpleRecord::Base

        set_table_name :open_id_authentication_associations

        has_attributes :handle,
                       :secret,
                       :assoc_type, :server_url

        has_ints :issued, :lifetime

        def from_record
            OpenID::Association.new(handle, Base64.decode64(secret), issued, lifetime, assoc_type)
        end
    end
end
