# frozen_string_literal: true

desc 'Парсит сайт www.airportufa.ru и извлекает информацию о рейсах'
task(parse_data: :environment) do
  require 'parser.rb'
end