Factory.define :designation do |f|
  f.name {|a| a.association(:name)}
end