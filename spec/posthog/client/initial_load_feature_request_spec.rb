# frozen_string_literal: true
require 'spec_helper'

require_relative 'auto_load_feature_flags_context'

describe PostHog::Client do
  include_context 'auto_load_feature_flags'

  it do
    expect(poller).to(have_received(:load_feature_flags))
  end

  context "when no personal API key" do
    let(:personal_api_key) { nil }
    it { expect(poller).to_not(have_received(:load_feature_flags))}
  end

  context "when skip_feature_flags_preload is true" do
    let(:skip_feature_flags_preload) { true }
    it { expect(poller).to_not(have_received(:load_feature_flags))}
  end
end
