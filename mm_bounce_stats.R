



d <- read.csv("/tmp/daily.csv")
d$date <- as.Date(paste(d$month, d$day, "2022", sep=' '), "%b%d%Y")
ggplot(d, aes(date, count)) +
  geom_line()

h <- read.csv("/tmp/hourly.csv")
h$dt <- ISOdatetime("2022", match(h$month,month.abb), h$day, h$hour, 0, 0)
head(h)
ggplot(h, aes(dt, count)) +
  geom_line()

ggplot(h, aes(dt, count)) +
  geom_point()

