module HttpMock
  module Http
    class Request
      attr_accessor :body, :query_string, :headers, :url, :method

      def initialize(hash)
        hash.each { |f, v| send("#{f}=", v) if respond_to?("#{f}=") }
      end
    end
  end
end
