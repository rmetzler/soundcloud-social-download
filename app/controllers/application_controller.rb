class ApplicationController < ActionController::Base
  
  helper :all
  protect_from_forgery
  
  protected
  
  def consumer(service)
    if service == "twitter"
      @consumer ||= OAuth::Consumer.new("D9tonxAqgH73v3h3bIPNTA", "hfcEuzoHRSKDVzaPkxQZHrX3bDjOHnNtaGIEnMw", :site => 'https://twitter.com')
    elsif service == "soundcloud"
      @consumer ||= OAuth::Consumer.new("J8aFr3h5xyOSkYxsJMYXQ", "cCysasMDFSo8ErnCaAJQzpl8LUrkoziAVSTvzOhJWc", :site => 'http://api.soundcloud.com')
    end
  end
  
  def client
    @client ||= OAuth2::Client.new("130178800328203", "82933a3c53aaf5cb027ec0ee6ced6c87", :site => 'https://graph.facebook.com')
  end
  
  def config
    # config = YAML.load(File.open(RAILS_ROOT + '/config/facebook_auth.yml').read)[RAILS_ENV]
    # config['app_id'], config['secret'], :site => 'https://graph.facebook.com'
  end
  
end
