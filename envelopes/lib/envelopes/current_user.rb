module Envelopes
    class CurrentUser
        USER_FILES_PATH = "#{__dir__}/../../users"
        CURRENT_USER = "#{USER_FILES_PATH}/current_user.yaml"
        
        def initialize
            @current_user = YAML.load(File.read(CURRENT_USER))
        end

        def self.log_in(current_user)
            unless current_user.is_a?(String)
                raise "You can only log in with a string: #{current_user}"
            end
            File.open(CURRENT_USER, "w") { |f| f.write(current_user) }

        end

    end
end