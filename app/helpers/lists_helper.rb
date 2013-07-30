module ListsHelper

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
