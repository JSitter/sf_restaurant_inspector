require 'httparty'

class Inspections
  include HTTParty
  format :plain
  base_uri 'data.sfgov.org'

  def self.get_by_name(name)

    url = '/resource/sipz-fjte.json?business_name=%s' % name
    uri = URI.encode(base_uri + url)
    response = get(uri)
    return response.body

  end

end