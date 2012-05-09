# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

class String
  # ActiveSupport::Inflector#titleize erases hyphens, because it
  # starts with humanize(underscore(str)).  This just does the
  # capitalization part.
  def just_titleize
    gsub(/\b('?[a-z])/) { $1.capitalize }
  end
end
