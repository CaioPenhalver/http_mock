require 'spec_helper'

RSpec.describe HttpMock::Http::Response do
  let(:params) do
    {
      body: '{body: true}',
      headers: 'any http header',
      code: 500
    }
  end

  subject do
    described_class.new params
  end

  it 'assign value to properties' do
    expect(subject.body).to eq params[:body]
    expect(subject.headers).to eq params[:headers]
    expect(subject.code).to eq params[:code]
  end
end
