setwd("D:/OneDrives/OneDrive/University/2025 Autumn/DSAA811/Assignment/DSAA811-Preliminary-Report/data")

library(tidyverse)
athletes <- read.csv('athlete_events_data_dictionary.csv', header = TRUE)
events <- read.csv('athlete_events.csv', header = TRUE)
countryDefdd<- read.csv('country_definitions_data_dictionary.csv',header = TRUE)
countryDef <- read.csv('country_definitions.csv',header = TRUE)
head(athletes,15)

events %>% filter(Sport == "Gymnastics") %>%
  ggplot() +
  geom_point(aes(x = Age, y = Weight)) +
  labs(title = 'Olympic gymnasts ages and weights') +
  theme_bw()

events  %>% filter(Year == 2016) %>%
  ggplot() +
  geom_bar(aes(y = Sport), stat="count") +
  labs(title = 'Number of athletes per sport in 2016') +
  theme_minimal(12)


events %>% filter ((Year == 2012) | (Year == 2016)) %>%
  ggplot() +
  geom_bar(aes(y = Sport), stat="count") +
  labs(title = 'Number of athletes per sport in 2016') +
  theme_minimal(12) +
  facet_wrap(events$Year)

options(max.print=1000000)

events %>% filter (Year == 2000) %>%
  ggplot() +
  geom_bar(aes(y = Sport), stat="count") +
  labs(title = 'Number of athletes per sport in 2000') +
  theme_bw()

summary(events)

events$Sex <- factor(events$Sex,
                     levels = c("M","F"),
                     labels = c("M","F"))

distinct(events, Year) 
years <- distinct(events, Year)
events$Year <- factor(events$Year,
                      levels = years,
                      labels = years)
class(events$Year)

events %>% filter (Year >= 2000) %>%
  ggplot() +
  geom_bar(aes(y = Sport), stat="count") +
  labs(title = 'Number of athletes per sport in 2000') + theme_bw() +
  facet_wrap(vars(events$Year >= 2000))

Summer <- events %>% filter (Season == "Summer") %>% filter (Year > 2000)
Summer %>% 
  ggplot(aes(width=60, height=100)) +
  geom_bar(aes(y = Sport), stat="count") +
  labs(title = 'Number of athletes per sport in 2000') + theme_bw() +
  facet_wrap(vars(Summer$Year))


