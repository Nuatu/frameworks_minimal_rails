require 'rails_helper'

describe Framework do
  it { should validate_presence_of :name }
  it { should have_many :tags }

end
