require File.join(File.dirname(__FILE__), 'spec_helper')

describe Guest do
	it { should validate_presence_of(:first_name)}
	it { should validate_presence_of(:last_name)}
	it { should validate_presence_of(:city)}
	it { should validate_presence_of(:family_id)}
	it { should validate_uniqueness_of(:email)}
end