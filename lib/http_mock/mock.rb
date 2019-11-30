module HttpMock
  class Mock
    attr_accessor :request, :response

    def initialize(request, response)
      self.request = request
      self.response = response
    end
  end
end
