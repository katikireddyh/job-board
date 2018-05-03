require 'spec_helper'

describe Gitlab::PaginatedResponse do
  before do
    array = [1, 2, 3, 4]
    @paginated_response = Gitlab::PaginatedResponse.new array
  end

  it "should respond to *_page and has_*_page methods" do
    expect(@paginated_response).to respond_to :first_page
    expect(@paginated_response).to respond_to :last_page
    expect(@paginated_response).to respond_to :next_page
    expect(@paginated_response).to respond_to :prev_page
    expect(@paginated_response).to respond_to :has_first_page?
    expect(@paginated_response).to respond_to :has_last_page?
    expect(@paginated_response).to respond_to :has_next_page?
    expect(@paginated_response).to respond_to :has_prev_page?
  end

  context '.parse_headers!' do
    it "should parse headers" do
      @paginated_response.parse_headers!('Link' => "<http://example.com/api/v3/projects?page=1&per_page=5>; rel=\"first\", <http://example.com/api/v3/projects?page=20&per_page=5>; rel=\"last\"")
      client = @paginated_response.client = double('client')
      first_page_response = double('first_page_response')
      last_page_response = double('last_page_response')
      allow(client).to receive(:endpoint).and_return("http://example.com/api/v3")
      allow(client).to receive(:get).with("/projects?page=1&per_page=5").and_return(first_page_response)
      allow(client).to receive(:get).with("/projects?page=20&per_page=5").and_return(last_page_response)
      expect(@paginated_response.has_first_page?).to be true
      expect(@paginated_response.has_last_page?).to be true
      expect(@paginated_response.has_next_page?).to be false
      expect(@paginated_response.has_prev_page?).to be false
      expect(@paginated_response.first_page).to be first_page_response
      expect(@paginated_response.last_page).to be last_page_response
      expect(@paginated_response.next_page).to be_nil
      expect(@paginated_response.prev_page).to be_nil
    end
  end

  context '.each_page' do
    it "should iterate pages" do
      next_page = double('next_page')
      allow(@paginated_response).to receive(:has_next_page?).and_return(true)
      allow(@paginated_response).to receive(:next_page).and_return(next_page)
      allow(next_page).to receive(:has_next_page?).and_return(false)
      expect { |b| @paginated_response.each_page(&b) }.to yield_successive_args(@paginated_response, next_page)
    end
  end

  context '.auto_paginate' do
    it "should returns an array if block is not given" do
      next_page = double('next_page')
      allow(@paginated_response).to receive(:has_next_page?).and_return(true)
      allow(@paginated_response).to receive(:next_page).and_return(next_page)
      allow(next_page).to receive(:has_next_page?).and_return(false)
      allow(next_page).to receive(:to_ary).and_return([5, 6, 7, 8])
      expect(@paginated_response.auto_paginate).to contain_exactly(1, 2, 3, 4, 5, 6, 7, 8)
    end
  end
end
