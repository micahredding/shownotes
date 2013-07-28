class Item < ActiveRecord::Base
  belongs_to :list
  attr_accessible :description, :links, :list_id

  def combined
    if links.blank?
      return description 
    end

    links_array = links.split("\n")

    if not description.include? "]"
      description_array = [ "[" + description ]
    else 
      description_array = description.split("]")
    end

    description_with_links = []

    description_array.zip(links_array).each do |i|
      a = i.first || "link"
      b = (i.second || "#").chomp
      if not a.include? "["
        a = a + "["
      end
      description_with_links.push ( a + "](" + b + ")" )
    end

    description_with_links.join
  end

end
