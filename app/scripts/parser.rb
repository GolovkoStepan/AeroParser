require 'open-uri'
require 'nokogiri'

@data = []         # массив данных, загруженных с сайта
@page_number = 1   # счетчик страниц
@last_page = false # последняя страница
@url = "http://www.airportufa.ru/passazhiram/raspisanie.html?filter=1&type=1&flightNumber=0&date=&city=0&aircompany=0&page="

puts "#{Time.now} - Старт парсинга сайта..."

until @last_page
  html = open(@url + @page_number.to_s)
  doc = Nokogiri::HTML(html)

  doc.css('.season-shedule').each do |container|

    container.css('.season-shedule_body').each do |table_body|

      table_body.css('.row.collapse').each do |table_row|

        matching_items = table_row.css('.large-3.columns').map(&:text)

        aircraft_type = table_row.at_css('.large-2.columns').text

        city = matching_items[0]

        company = matching_items[1]

        @data.push(company: company, aircraft_type: aircraft_type, city: city)

      end

    end

  end

  puts "#{Time.now} - Загружена #{@page_number} страница"

  doc.css('.pages').each do |container|

    unless container.at_css('.next.hidden').nil?
      @last_page = true
      puts "#{Time.now} - Парсинг сайта завершен!"
    end

  end

  @page_number += 1
end

@data.uniq! # Удаление из коллекции дубликатов

puts "#{Time.now} - Загрузка данных в БД..."

@data.each do |row|
  company = Company.where(name: row[:company]).first_or_create

  aircraft = Aircraft.where(name: row[:aircraft_type]).first_or_create

  city = City.where(name: row[:city]).first_or_create

  unless company.aircrafts.exists?(aircraft.id)
    company.aircrafts << aircraft
  end

  unless company.cities.exists?(city.id)
    company.cities << city
  end

  unless aircraft.cities.exists?(city.id)
    aircraft.cities << city
  end
end

puts "#{Time.now} - Загрузка данных в БД завершена!"