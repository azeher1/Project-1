library(tidyverse)

tuesdata <- tidytuesdayR::tt_load("2022-01-18")
chocolate <- tuesdata$chocolate
as_tibble(chocolate)
glimpse(chocolate)


qplot(rating, data=chocolate, bins = 10)
qplot(rating, data=chocolate, bins = 15)
qplot(rating, data=chocolate, bins = 20)
qplot(rating, data=chocolate, bins = 25)

#The one that looks the best
qplot(rating, data=chocolate, bins = 25)


chocolate %>%
  group_by(country_of_bean_origin) %>%
  count(chocolate$country_of_bean_origin)