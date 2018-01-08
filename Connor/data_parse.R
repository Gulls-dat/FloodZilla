# Flood data

# install packages
install.packages("ggplot2"); library(ggplot2)


trial <- read.csv("/Users/trevorgullstad/Desktop/Gulls-dat/flood/data/21_data.csv")

colnames(trial) <- c("Height", "UnixTime", "PST", "EST")

i <-0
TimeSinceLast <- 0
for (i in 1:(nrow(trial)-1)) {
  TimeSinceLast <- c(TimeSinceLast, trial$UnixTime[i+1] - trial$UnixTime[i])
}

trial$TimeSinceLastSecs <- TimeSinceLast
trial$TimeSinceLastMins <- round(trial$TimeSinceLastSecs/60,1)

##

sensor22 <- read.csv("/Users/trevorgullstad/Desktop/Gulls-dat/flood/data/22_data.csv")
colnames(sensor22) <- c("Height", "UnixTime", "PST", "EST")

i <-0
TimeSinceLast <- 0
for (i in 1:(nrow(sensor22)-1)) {
  TimeSinceLast <- c(TimeSinceLast, sensor22$UnixTime[i+1] - sensor22$UnixTime[i])
}

sensor22$TimeSinceLastSecs <- TimeSinceLast
sensor22$TimeSinceLastMins <- round(sensor22$TimeSinceLastSecs/60,1)
#
ggplot(sensor22, aes(UnixTime, Height), title = "Sensor 22") +
  geom_line(color="blue", lwd=1)

## SENSOR 23

sensor23 <- read.csv("/Users/trevorgullstad/Desktop/Gulls-dat/flood/data/23_data.csv")
colnames(sensor23) <- c("Height", "UnixTime", "PST", "EST")

i <-0
TimeSinceLast <- 0
for (i in 1:(nrow(sensor23)-1)) {
  TimeSinceLast <- c(TimeSinceLast, sensor23$UnixTime[i+1] - sensor23$UnixTime[i])
}

sensor23$TimeSinceLastSecs <- TimeSinceLast
sensor23$TimeSinceLastMins <- round(sensor23$TimeSinceLastSecs/60,1)
#
ggplot(sensor23, aes(UnixTime, Height), title = "Sensor 23") +
  geom_line(color="red", lwd=1)

## SENSOR 24

sensor24 <- read.csv("/Users/trevorgullstad/Desktop/Gulls-dat/flood/data/24_data.csv")
colnames(sensor24) <- c("Height", "UnixTime", "PST", "EST")

i <-0
TimeSinceLast <- 0
for (i in 1:(nrow(sensor24)-1)) {
  TimeSinceLast <- c(TimeSinceLast, sensor24$UnixTime[i+1] - sensor24$UnixTime[i])
}

sensor24$TimeSinceLastSecs <- TimeSinceLast
sensor24$TimeSinceLastMins <- round(sensor24$TimeSinceLastSecs/60,1)
#
ggplot(sensor24, aes(UnixTime, Height), title = "Sensor 24") +
  geom_line(color="green", lwd=1)
