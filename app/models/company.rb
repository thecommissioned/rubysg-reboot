class Company
  include ActiveModel::Model

  attr_accessor(
    :name,
    :website,
    :logo_url,
    :address,
    :hiring_url,
    :email
  )

  validates_presence_of(
    :name,
    :website,
    :logo_url,
    :address,
    :email
  )

  def self.all
    LIST.map { |company| Company.new(company) }.sort_by {|company| company.name.downcase }
  end

  # Update the constant `LIST` with your company details.
  #
  # *Do not worry about the order as `LIST` will be sorted alphabetically.*
  #
  # 1. Name of Company
  # 2. Website of Company
  # 3. Logo URL (max height 100px)
  #   - Tip: Issue a Pull Request on GitHub, add your logo to the PR's description and use the GitHub link.
  # 4. Address of Company
  #   - In the future, we might be able to map all companies onto a map!
  # 5. Hiring URL
  #   - If you are hiring, add the link to the JD, otherwise, set as `nil`.
  # 6. Email
  #   - A generic company email
  #
  # Notes:
  #
  # - Use single quotes
  # - Align hash values so that it's easier to scan
  #
  # After you are done, please run specs with `rspec`.
  #
  # There are basic specs that validate the integrity of constant `LIST`
  # and so if specs fail, please fix the errors before issuing a Pull Request.

  LIST = I18n.t('companies')
end
