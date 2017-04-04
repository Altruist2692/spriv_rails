module Spriv
  class Client
      BASE_URI = 'https://m.spriv.com/wsM5.asmx/'
      def method_missing(m, *args, &block)
        begin
          uri = URI(BASE_URI + prepare_path(m))
          response = Net::HTTP.post_form(uri, prepare_options(args[0]))
          JSON.parse(response.body)
        rescue Exception => e
          { message: e.message }
        end
      end

      private

      def prepare_path(m)
        m.to_s.humanize.titleize.strip.gsub(/\s+/, '')
      end

      def prepare_options(args={})
        args.merge!({
          "strUsername" => ::Spriv.config.username,
          "strPassword" => ::Spriv.config.password,
          })
      end
    end
  end
