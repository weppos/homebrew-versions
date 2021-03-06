cask 'webkit-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    open('https://webkit.org/downloads/') { |landing_page| landing_page.read[%r{https:\/\/builds-nightly.webkit.org\/files\/trunk\/mac\/WebKit-SVN-r\d+.dmg}] }
  end
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'

  app 'WebKit.app'
end
