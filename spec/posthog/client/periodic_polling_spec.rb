# frozen_string_literal: true
require 'spec_helper'

require_relative 'auto_load_feature_flags_context'

# The code + old rspec-mocks make this UNTESTABLE SHIT
describe PostHog::Client do

  # include_context 'auto_load_feature_flags'
  # let!(:poller) { instance_spy(PostHog::FeatureFlagsPoller) }
  # let(:feature_flags_polling_interval) { 0.01 } # 30 default
  # let(:skip_feature_flags_preload) { true }
  # let(:client) { PostHog::Client.new(api_key:, personal_api_key:, test_mode: true, feature_flags_polling_interval:) }

  # it { eventually{ expect(poller).to(have_received(:_load_feature_flags)) } }
  # it { puts poller.inspect }

  # context "when feature_flags_polling_interval is negative" do
  #   let(:feature_flags_polling_interval) { -1 }

  #   it { expect(poller).to_not(have_received(:_load_feature_flags)) }
  #   it { expect(poller.instance_variable_get(:@task)).to be_nil}
  # end
end
