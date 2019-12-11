module HttpMock
  module Actions
    class ReadFile
      class << self
        def execute(file_path)
          hash = load_file(file_path)
          build_mock(hash)
        end

        private

        def load_file(file_path)
          Oj.laod(file_path.read)
        end

        def build_mock(hash)
          request = HttpMock::Http::Request.new(hash[:request])
          response = HttpMock::Http::Response.new(hash[:response])
          HttpMock::Mock.new(request, response)
        end
      end
    end
  end
end
