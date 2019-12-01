require 'oj'
require 'pathname'

require "http_mock/version"
require "http_mock/mock"
require "http_mock/configuration"

require "http_mock/actions/build_path"

require "http_mock/errors/file_not_found"
require "http_mock/errors/invalid_path"

module HttpMock
  class Error < StandardError; end
  # Your code goes here...
end
