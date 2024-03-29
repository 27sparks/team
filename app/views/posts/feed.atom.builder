atom_feed :language => 'de-DE' do |feed|
    feed.title("Team.BERNER-Bikes.com News-Feed")
    feed.updated(@posts.first.created_at)

    @posts.each do |post|
      feed.entry(post) do |entry|
        entry.title(post.title)
        entry.content(post.body, :type => 'html')

        entry.author do |author|
          author.name("Team.BERNER-Bikes.com")
        end
      end
    end
  end
