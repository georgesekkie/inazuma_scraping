require 'mechanize'
require 'pry-rails'

class Scraping
  def self.movie_urls
    agent = Mechanize.new
    links = []
    next_url= "/now/"

    while true
      current_page = agent.get("http://eiga.com" + next_url)
      #①ページから個別リンクへのタグを取得する

      #②それぞれへの個別ページへのリンクからhref要素を取り出す
 
      #③next_urlという変数に対して次ページへのリンクを取得する
 
      #④next_urlがなければbreakする
    end
    #⑤inksに入っているlinkを利用しながらget_productメソッドを利用する
  end
 
  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.moveInfoBox h1').inner_text
    puts title
  end
end

Scraping.movie_urls
