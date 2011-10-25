module PostsHelper
  def date2dmy(d)      
    if d!=nil
      return d.strftime("%d.%m.%Y")
    end
  end
end
