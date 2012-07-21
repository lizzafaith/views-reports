

module TagsHelper
  
  def tag_path tag
    return "/tags" if tag.blank?
    
    return "/tags/show/#{tag[:name_seo].to_s}" unless tag[:name_seo].blank?
    
    "/tags/#{tag[:id].to_s}"
  end
  
end