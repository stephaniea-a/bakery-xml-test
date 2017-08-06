require 'spec_helper'

describe 'restaurant menu testing' do

	before(:all) do
		@menu = Nokogiri::XML(open('./bakery_xml.xml'))
	end

	it 'should not have any menu items with calories over 1000' do

		@menu.xpath('//calories').each  do |calorie|
			expect(calorie.text.to_i).to be < 1000
		end

	end

	it 'should not have any menu items with a price over £8' do

		@menu.xpath('//price').each  do |price|
			expect(price.text.gsub('£','').to_f).to be <= 8.0
		end

	end

	it 'should have the Homestyle breakfast item as the most expensive' do
		# @menu.xpath('//name').each  do |x|
		# 	@boolean = true
		# 	if x.text == "Homestyle Breakfast"
		# 		 @homestyle = x.next_element.text.gsub('£','').to_i
		# 	end

		# @menu.xpath('//name').each do |x|
		# 	if x.next_element.text.gsub('£', '').to_i > @homestyle
		# 		@homestyle
		# 		@boolean = false
		# 	end
		# end
		# 	expect(@boolean).to eq(false)
		# end
		
		@menu.xpath('//prices').each  do |price|
			expect(price.text.gsub('£','').to_f).to be < 6.95
		end

	end

	# it 'all waffles items should have 2 waffles in the description' do

	# end


end