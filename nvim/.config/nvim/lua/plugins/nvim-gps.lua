
return {
  'SmiteshP/nvim-gps',
  config = function()
    require("nvim-gps").setup({
      icons = {
        ["class-name"] = " ", -- Classes and class-like objects
        ["function-name"] = " ", -- Functions
        ["method-name"] = " ", -- Methods (functions inside class-like objects)
      },
      adlanguages = { -- You can disable any language individually here
        ["c"] = true,
        ["cpp"] = true,
        ["go"] = true,
        ["java"] = true,
        ["javascript"] = true,
        ["lua"] = true,
        ["python"] = true,
        ["rust"] = true,
        ["viml"] = true,
      },
      separator = " > ",
    })
  end,
}
