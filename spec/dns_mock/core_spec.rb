# frozen_string_literal: true

RSpec.describe DnsMock do
  describe 'defined constants' do
    it { expect(described_class).to be_const_defined(:AVAILABLE_DNS_RECORD_TYPES) }
  end
end

RSpec.describe DnsMock::RandomFreePortError do
  subject(:error_instance) { described_class.new(42) }

  it { expect(described_class).to be < ::RuntimeError }
  it { expect(error_instance).to be_an_instance_of(described_class) }
  it { expect(error_instance.to_s).to eq('Impossible to find free random port in 42 attempts') }
end

RSpec.describe DnsMock::ArgumentTypeError do
  subject(:error_instance) { described_class.new('SomeClassName') }

  let(:error_context) { 'Argument class is a SomeClassName. Should be a Hash' }

  it_behaves_like 'customized standard error'
end

RSpec.describe DnsMock::RecordContextError do
  subject(:error_instance) { described_class.new('record_data', 'record_type') }

  let(:error_context) { 'record_data. Invalid record_type record context' }

  it_behaves_like 'customized standard error'
end

RSpec.describe DnsMock::RecordContextTypeError do
  subject(:error_instance) { described_class.new('record_context_type', 'record_type', 'expected_type') }

  let(:error_context) { 'record_context_type is invalid record context type for record_type record. Should be a expected_type' }

  it_behaves_like 'customized standard error'
end

RSpec.describe DnsMock::RecordNotFoundError do
  subject(:error_instance) { described_class.new('record_type', 'hostname') }

  let(:error_context) { 'record_type not found for hostname in predefined records dictionary' }

  it_behaves_like 'customized standard error'
end

RSpec.describe DnsMock::RecordTypeError do
  subject(:error_instance) { described_class.new('record_type') }

  let(:error_context) { 'record_type is invalid record type' }

  it_behaves_like 'customized standard error'
end
