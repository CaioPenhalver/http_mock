require 'spec_helper'

RSpec.describe HttpMock::Actions::BuildPath do
  let(:file_path) { 'path/to/file' }
  let(:work_dir) { 'path/to/work/directory' }

  subject do
    described_class.execute(work_dir, file_path)
  end

  context 'when the path is valid' do
    before do
      allow_any_instance_of(Pathname).to receive(:directory?).and_return(true)
      allow_any_instance_of(Pathname).to receive(:file?).and_return(true)
    end

    it 'should return an object of type Pathname' do
      expect(subject).to be_a Pathname
    end

    it 'should return a absolute path' do
      expect(subject.to_s).to eq "#{Dir.pwd}/#{work_dir}/#{file_path}.json"
    end
  end

  context 'when the path is invalid' do
    context 'when the work directory is invalid' do
      it 'should raise an error' do
        expect { subject }.to raise_error HttpMock::Errors::InvalidPath
      end
    end

    context 'when the file path is invalid' do
      before do
        allow_any_instance_of(Pathname).to receive(:directory?).and_return(true)
      end

      it 'should raise an error' do
        expect { subject }.to raise_error HttpMock::Errors::FileNotFound
      end
    end
  end
end
