require 'rubygems'
require 'avro'

# Open items.avro file in read mode
file = File.open('items.avro', 'rb')

# Create an instance of DatumReader
reader = Avro::IO::DatumReader.new

# Creates a DataFileReader
dr = Avro::DataFile::Reader.new(file, reader)

# For each record type in the input file prints the fields
dr.each do |record|
  print record['name'], "\t", record['description'], "\t", record['price'], "\n"
end

dr.close
