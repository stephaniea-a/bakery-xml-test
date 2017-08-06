require 'nokogiri'

doc = Nokogiri::XML(open('./bakery_xml.xml'))

# puts doc.xpath('//breakfast_menu')
# puts doc.xpath('//name').text
# puts doc.xpath('//name').first
# puts doc.xpath('//name').last

# puts doc.search('price').text
# puts doc.search('price').length
# puts doc.search('price').empty?
# puts doc.search('//name').reverse
# puts doc.search('//name').to_ary
# puts doc.search('//name').shift
# puts doc.search('//name').pop
# puts doc.search('//description').first.parent

# puts doc.xpath('//calories').to_ary
# doc.xpath('//price').each do |x|
# 	puts x.text

# end

doc.xpath('//name').each do |x|
	# puts x
	# puts x.next_element
	if x.text == "Homestyle Breakfast"
	 	 puts @homestyle = x.next_element.text.gsub('£','').to_f

	 	if x.next_element.text.gsub('£', '').to_f > @homestyle
	 		puts @homestyle
	 	end
	end

end

doc.xpath('//food').each do |x|

end

# it 'should have the Homestyle breakfast item as the most expensive' do
	# 	doc.xpath('//name').each  do |x|
	# 		@boolean = true
	# 		if x.text == "Homestyle Breakfast"
	# 			@homestyle = x.next_element.text.gsub('£','').to_f
	# 		end
	# 		if x.next_element.text.gsub('£', '').to_f > @homestyle
	# 			@boolean = false
	# 		end
	# 		# expect(@boolean).to eq(true)
	# 	end
	# end




