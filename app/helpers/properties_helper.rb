module PropertiesHelper
   def property_thumbnail
     img = property.image.pressent ? property.image.url : "placeholder.jpg"
     image_tag img
   end
end
