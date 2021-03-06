require 'spec_helper'

describe 'mcollective::common::setting' do
  context 'some_setting' do
    let(:title) { 'some_setting' }
    let(:params) { { 'value' => 'pie' } }
    it { should contain_mcollective__setting('mcollective::common::setting some_setting') }
    it { should contain_mcollective__setting('mcollective::common::setting some_setting').with_setting('some_setting') }
    it { should contain_mcollective__setting('mcollective::common::setting some_setting').with_value('pie') }
    it { should contain_mcollective__setting('mcollective::common::setting some_setting').with_target(%w[ mcollective::server mcollective::client ]) }
  end
end
