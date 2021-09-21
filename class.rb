class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def book
    puts "著書: #{@author}"
    puts "タイトル: #{@title}"
    puts "本文: #{@content}"
  end


end

article = Article.new('安倍', "Rubyの素晴らしさについて", "Awesome Ruby!")
article.book

class Article
  
  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def author
    @author
  end
  
  def title
    @title
  end

  def content
    @content
  end
end

article = Article.new("安倍", "Rubyの素晴らしさについて", "Awesome Ruby!")
puts "著書: #{article.author}"
puts "タイトル: #{article.title}"
puts "本文: #{article.content}"