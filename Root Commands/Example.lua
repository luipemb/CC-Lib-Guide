-- Before starting: Notice that the file is named "Example.lua", and doesn't end in "S". In this case if you defined "SCheck" as true, this file won't be registred as "importable".

vers = 1.0 -- The version (please)

loaderM1 = "loaderM1 example"
loaderM2 = "example in white"
loaderW3 = "warning!!!"

function createfile(name)
  local fl = fs.open(name)
  fl.write()
  fl.close()
end

function math(...)
  numbs = {}
  
  local args = {...}
  local operator = args[1]
  
  for i, v in ipairs(args) do 
    if not i == 1 then  
      table.insert(numbs, v)
    end
  end

  if operator == "+" then
    local r = 0
    for i, v in ipairs(numbs) do
      r = v + r
    end
    return r
  end
end

-- Now helpcommands. This table will be displayed everytime someone uses "helplib(libX)" command.
helpcommands = {
  "createfile(name) -- Creates a file in the fs system",
  "math(operator, ...) -- Performs math according to the operator and the arguments (...)"
}
