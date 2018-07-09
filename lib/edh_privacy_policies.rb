require "edh_privacy_policies/version"
require "i18n"

module EdhPrivacyPolicies
  def self.root
    File.dirname __dir__
  end

  I18n.load_path += [
    File.join(root, 'lib/edh_privacy_policies/locales/en-AU.yml'),
    File.join(root, 'lib/edh_privacy_policies/locales/en-GB.yml'),
    File.join(root, 'lib/edh_privacy_policies/locales/en-IE.yml'),
    File.join(root,'lib/edh_privacy_policies/locales/en-NZ.yml'),
    File.join(root, 'lib/edh_privacy_policies/locales/en-US.yml'),
  ]

  def self.current_policy_version(locale)
    policy_versions(locale).first
  end

  def self.current_policy(locale)
    current_version = current_policy_version(locale)
    all_policies(locale)[current_version.to_sym]
  end

  def self.all_policies(locale)
    I18n.t(:privacy_policy, locale: locale)
  end

  def self.policy_versions(locale)
    I18n.t(:privacy_policy, locale: locale).keys.collect(&:to_s)
  end
end
