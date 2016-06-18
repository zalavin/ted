require_relative '../base'
require 'uri'

describe Parser::OLX do
  subject(:parser) { Parser::OLX.new }

  it 'will obtain a document' do
    expect(parser.document).to be_a Nokogiri::HTML::Document
  end

  it 'will retrieve an array of links' do
    expect(parser.links).to be_a Array
    expect(parser.links.length).to be > 1
    expect(parser.links.all? { |l| l =~ URI::regexp }).to be true
  end
end