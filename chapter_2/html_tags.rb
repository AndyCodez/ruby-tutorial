def paragraph(paragraph_elements)
	# content = paragraph_elements
	"<p>#{paragraph_elements}</p>"
end

def image(src, width = 100, height = 100)
	image_tag = "<img src=#{src} width='#{width}' height='#{height}'/>"
	image_tag
end

paragraph_elements = "this is coding"



# puts paragraph("This is me coding!")
puts image("'home/workspace/andy.jpg'", 200, 150)