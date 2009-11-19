module OpenIdAuthentication
    class Nonce < SimpleRecord::Base
        set_table_name :open_id_authentication_nonces

        has_attributes :timestamp,
                       :salt,
                       :server_url
    end
end
