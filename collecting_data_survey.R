# ui.R 

library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Collecting data"),
	sidebarPanel(
    h3("Technical Skills"),
		numericInput("id1", "Rate yourself on a scale of 1 to 10 of your technical skills, where 1 is least technical and 10 is most technical.", 1, min = 1, max = 10, step =1),
		h3("Movies"),
    checkboxGroupInput("id2", "Choose your top 3 favorite movies.",
			c("12 Years a Slave" = "1",
			"Captain Phillips" = "2",
			"Gravity" = "3",
      "American Hustle" = "4",
      "Her" = "5",
      "The Wolf of Wall Street" = "6",
      "Les Miserables" = "7"
			),
		dateInput("date", "Date:")
		) 
	),
	mainPanel(
		h3("Illustrating outputs"),
		h4("Regarding technical skills, you entered:"),
		verbatimTextOutput("oid1"),
		h4("Regarding movies, you entered:"),
		verbatimTextOutput("oid2"),
		h4("Regarding date, you entered:"),
		verbatimTextOutput("odate"),
		code("Copy and paste this code if you want to share your answers."),
		p("Thank you for taking this survey.")
	)
))
