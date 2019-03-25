# frozen_string_literal: true
require 'parser'

desc 'Парсит сайт www.airportufa.ru и извлекает информацию о рейсах'
task(parse_data: :environment) do
  parser = Parser.new
  parser.execute
end