require File.join(File.dirname(__FILE__), 'spec_helper')

describe Family do
	it { should validate_presence_of(:name) }
end