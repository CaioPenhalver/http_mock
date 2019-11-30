require 'webmock'

module HttpMock
  module Actions
    class CreateMock
      include WebMock::API

      def execute(mock)
        WebMock.enable!
        stub_request(:any, uri_template)
      end
    end
  end
end
