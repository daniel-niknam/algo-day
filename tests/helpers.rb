def load_fixture(filename, splitter = " ")
  File.read(filename).strip.split(splitter)
end