RSpec.describe EdhPrivacyPolicies do
  I18n.load_path = ['spec/locales-fixtures/en.yml']

  it "has a version number" do
    expect(EdhPrivacyPolicies::VERSION).not_to be nil
  end

  it "provides the most recent privacy policy version for a locale" do
    expect(EdhPrivacyPolicies.current_policy_version('en'))
      .to eql "2018-05-01"
  end

  it "provides an array of privacy policy versions for a locale" do
    expect(EdhPrivacyPolicies.policy_versions('en'))
      .to eql ["2018-05-01", "2017-05-23"]
  end

  it "provides current privacy policy content for a locale" do
    expect(EdhPrivacyPolicies.current_policy('en'))
      .to eql({ title: "New Privacy Policy" })
  end

  it "provides a hash of all privacy policies for a locale" do
    expect(EdhPrivacyPolicies.all_policies('en'))
      .to eql({
        "2018-05-01": { title: "New Privacy Policy" },
        "2017-05-23": { title: "Privacy Policy"}
      })
  end
end
