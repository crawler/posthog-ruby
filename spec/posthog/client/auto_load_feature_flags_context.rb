# frozen_string_literal: true

shared_context 'auto_load_feature_flags' do
  let!(:poller_class) { allow(PostHog::FeatureFlagsPoller).to(receive(:new).and_return(poller))}
  let!(:poller) { instance_spy(PostHog::FeatureFlagsPoller) }
  let(:personal_api_key) {'secret'}
  let(:skip_feature_flags_preload) { nil }
  let(:api_key) { API_KEY }
  let(:client) { PostHog::Client.new(api_key:, personal_api_key: , test_mode: true, skip_feature_flags_preload:) }

  before do
    allow(poller).to(receive(:load_feature_flags))
    allow(poller).to(receive(:_load_feature_flags))
    client
  end
end
