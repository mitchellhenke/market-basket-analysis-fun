# :g/\d\{5},,/d run on transactions.csv removed 132 rows
# :g/,-\d\+,/d run on transactions.csv removed 1119 rows
library(arules)
transactions <- read.transactions('transactions.csv', format='single', sep=',', cols=c('invoiceno','description'))
# support and confidence specify the minimum level necessary for an itemset to be considered for rules
rules <- apriori(transactions, parameter = list(support = 0.0145, confidence = 0.80))
inspect(sort(rules, by ="lift")[1:10])
