content.plugin1.section1 <- div(
  textInput("text1","Enter text"),
  sliderInput("bins",
              "Number of bins:",
              min = 1,
              max = 50,
              value = 30))
