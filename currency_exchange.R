
setwd("C:/Users/moon/Desktop/excell/Data_Analysis/data")

currency <- read.table("Currency_dataset_NEW2.csv",header=TRUE,sep=",")

fix(currency)

length<-nrow(currency)


country_one<-readline(prompt = "Enter the name of the first country: ")


country_two<-readline(prompt = "Enter the name of the second country: ")


value<-readline(prompt="Enter value: ")

value <- as.double(value)

i<-1

INR_one<-0
INR_two<-0

flag1<-0
flag2<-0

while(i <= length)
{
  if(currency$Country_Name[i]==country_one)
  {
    INR_one<-currency$Value.in.INR[i]
    flag1<-1
    if(flag2==1)
    {
      break}
  }
  else if(currency$Country_Name[i]==country_two)
  {
    INR_two<-currency$Value.in.INR[i]
    flag2<-1
    if(flag1==1)
    {
      break}
  }
  
  i<-i+1
}


if(INR_one > INR_two)
{
  
  print("Country_one has the heigher value")
  print("The country one is : ")
  print(country_one)
  print("The converted value is : ")
  currency_exchange <-INR_one/INR_two
  print(currency_exchange*value)
}

if(INR_one < INR_two)
{
  print("Country_two has the heigher value")
  print("The country two is : ")
  print(country_two)
  print("The converted value is : ")
  currency_exchange <-INR_two/INR_one
  print(currency_exchange*value)
}


