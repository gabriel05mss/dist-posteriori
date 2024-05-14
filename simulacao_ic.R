library(shiny)

ui <- fluidPage(
  tags$style(HTML("body {background-color: lightgray;}")),
  titlePanel("DISTRIBUIÇÃO A POSTERIORI"),
  fluidRow(
    column(width = 6,
           sliderInput(inputId = "medialike",
                       label = "média da verossimilhança",
                       value = -10, min = -10, max = 10),
           sliderInput(inputId = "sdlike",
                       label = "sd da verossimilhança",
                       value = 1, min = 1, max = 10)
    ),
    column(width = 6,
           sliderInput(inputId = "mediap",
                       label = "média da priori",
                       value = 10, min = -10, max = 10),
           sliderInput(inputId = "sdpriori",
                       label = "sd da priori",
                       value = 1, min = 1, max = 10)
    )
  ),
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    medialike <- input$medialike
    sdlike <- input$sdlike
    mediap <- input$mediap
    sdpriori <- input$sdpriori
    amostra <- seq(-20 , 20 , length.out = 1000)
    like <- dnorm(amostra , medialike , sdlike)
    priori <- dnorm(amostra , mediap , sdpriori)
    media_post <- (medialike * sdpriori^2 + mediap * sdlike^2) / (sdpriori^2 + sdlike^2)
    sd_post <- sqrt((sdlike^2 * sdpriori^2) / (sdlike^2 + sdpriori^2))
    post <- dnorm(amostra , media_post , sd_post)
    plot(amostra , post , type = "l" ,lwd = 3 , col = "blue", ylim = c(0,max(like,priori,post)))
    lines(amostra , priori , lwd = 3 , col = "red")
    lines(amostra , like , lwd = 3 , col = "yellow")
    legend("topright" , legend = c("post" , "priori" , "veross"), col = c("blue","red","yellow"), lwd = c(3,3,3))
    
  })
}

shinyApp(ui, server)
