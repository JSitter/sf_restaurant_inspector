require 'httparty'

class Inspections
  include HTTParty
  format :json

  base_uri 'data.sfgov.org'

  def self.get_by_name(name)

    url = '/resource/sipz-fjte.json?business_name=${name}'
    uri = URI.encode(url)
    get(uri)

  end

end