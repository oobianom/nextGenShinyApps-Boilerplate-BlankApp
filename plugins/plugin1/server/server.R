observeEvent(input$inputsright,{
  showModal(modalDialog(
    textInput("dataset", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datasext", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datastet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("dataszet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    div("Id leo in vitae turpis massa. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Nisl tincidunt eget nullam non nisi est sit amet. Lorem donec massa sapien faucibus et molestie. Diam donec adipiscing tristique risus."),
    footer = tagList(
      modalButton("Cancel"),
      actionButton("ok", "OK")
    ),

    # add extra arguments
    size = "s", # large
    position = "right" # position to the right
  ))
})

observeEvent(input$inputsleft,{
  showModal(modalDialog(
    textInput("dateaset", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datdasext", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datxastet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("dcataszet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    div("Id leo in vitae turpis massa. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Nisl tincidunt eget nullam non nisi est sit amet. Lorem donec massa sapien faucibus et molestie. Diam donec adipiscing tristique risus."),
    footer = tagList(
      modalButton("Cancel"),
      actionButton("ok", "OK")
    ),

    # add extra arguments
    size = "s", # large
    position = "left" # position to the left
  ))
})


observeEvent(input$inputsbtm,{
  showModal(modalDialog(
    textInput("daeaset", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datfdasext", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("datgxastet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    textInput("dcaqtaszet", "Enter a data set",
              placeholder = 'Try "mtcars" or "abc"'
    ),
    div("Id leo in vitae turpis massa. Et netus et malesuada fames ac turpis egestas maecenas pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Nisl tincidunt eget nullam non nisi est sit amet. Lorem donec massa sapien faucibus et molestie. Diam donec adipiscing tristique risus."),
    footer = tagList(
      modalButton("Cancel"),
      actionButton("ok", "OK")
    ),

    # add extra arguments
    size = "l", # large
    position = "bottom" # position to the bottom
  ))
})

