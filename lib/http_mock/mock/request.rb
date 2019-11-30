module HttpMock
  module Mock
    class Request
      attr_accessor :body, :query_string, :headers, :url, :method

      def initialize()
      end
    end
  end
end
