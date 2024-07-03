require 'spec_helper'

describe PairKit::Miniflector do
  subject { src.map { |x| described_class.public_send(inflector_method, x) } }

  let(:src) { ['helloWorld', 'HelloWorld', 'hello-world', 'hello_world', 'HELLO WORLD', 'Hello World'] }

  describe '#kebab_case' do
    let(:inflector_method) { 'kebab_case' }

    it { is_expected.to eq ['hello-world'] * src.size }
  end

  describe '#camel_case' do
    let(:inflector_method) { 'camel_case' }

    it { is_expected.to eq ['helloWorld'] * src.size }
  end

  describe '#pascal_case' do
    let(:inflector_method) { 'pascal_case' }

    it { is_expected.to eq ['HelloWorld'] * src.size }
  end

  describe '#snake_case' do
    let(:inflector_method) { 'snake_case' }

    it { is_expected.to eq ['hello_world'] * src.size }
  end

  describe '#screaming_snake_case' do
    let(:inflector_method) { 'screaming_snake_case' }

    it { is_expected.to eq ['HELLO_WORLD'] * src.size }
  end
end
