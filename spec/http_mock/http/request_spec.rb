require 'spec_helper'

RSpec.describe HttpMock::Http::Request do
  let(:params) do
    {
      body: '{body: true}',
      query_string: 'param1=hello',
      headers: 'any http header',
      url: 'https://www.any.com',
      method: 'POST'
    }
  end

  subject do
    described_class.new params
  end

  it 'assign value to properties' do
    expect(subject.body).to eq params[:body]
    expect(subject.query_string).to eq params[:query_string]
    expect(subject.headers).to eq params[:headers]
    expect(subject.url).to eq params[:url]
    expect(subject.method).to eq params[:method]
  end
end
