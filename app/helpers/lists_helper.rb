module ListsHelper

  def combine_text_and_links(text, links)
    if links.blank?
      return text 
    end

    links_array = links.split("\n")

    if not text.include? "]"
      text_array = [ "[" + text ]
    else 
      text_array = text.split("]")
    end

    text_with_links = []

    text_array.zip(links_array).each do |i|
      a = i.first || "link"
      b = (i.second || "#").chomp
      if not a.include? "["
        a = a + "["
      end
      text_with_links.push ( a + "](" + b + ")" )
    end

    text_with_links.join
  end

  def process_text(text)
    if not text.include? "["
      return [ [ text, nil ] ]
    else 
      text_array = text.split("[")
      text_array.each do |t|
        
      end
    end
  end    

  def process_links(links)
    links.each do |url|
      url = convert_amazon_link_to_affiliate_link(url)
    end
    return links
  end


  def convert_amazon_link_to_affiliate_link(url)
    affiliate_id = 'micahredding-20'

    if /tag=.*-20/.match(url)
      return url
    end

    if not /\?/.match(url)
      url = url + '?'
    else 
      url = url + '&'
    end

    url = url + 'tag=' + affiliate_id
  end


  def js(data)
    if data.respond_to? :to_json
      data.to_json
    else
      data.inspect.to_json
    end
  end


  def add_item_link(name, where, render_options)
    html = render(render_options)

    link_to_function name, %{
      new_object_id = new Date().getTime();
      var html = $('#{js html}'.replace(/index_to_replace_with_js/g, new_object_id ).hide() ;
      html.appendTo($('#{where}')).slideDown('slow') ;
    }
    # Element.insert( '#{where}', #{html.to_json}.replace(/index_to_replace_with_js/g, new Date().getTime()) )

    # options = {:parent => true}.merge(options)
    # html = render(:partial => partial, :locals => { :form => form}, :object => object)
    # link_to_function name, %{
    #   var new_object_id = new Date().getTime() ;
    #   var html = jQuery(#{js html}.replace(/index_to_replace_with_js/g, new_object_id)).hide();
    #   html.appendTo(jQuery("#{where}")).slideDown('slow');
    # }
  end



end
