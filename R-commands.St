> library("lattice")
> tpl.one.by.one <- read.table("tpl-one-by-one.txt")
> tpl.one.by.one.table <- table(tpl.one.by.one)
> levelplot(tpl.one.by.one.table)
> head(tpl.one.by.one.table)
   V2
V1      0     1     2     3     4     5     6     7     8     9
  0 11648 19793 10232  1453    21   456  1298  4547   589   737
  1   738   915  1661  6566   815 15094   398  4877  2100  4193
  2  2654   878  5245  4987  3526  1523  5457  4636 11107 15440
  3 59634  1518 34402 72476 25494 32259 50131 24536 20430 20600
  4  1471  2694 13608  1943  3786  1044  1755   383   516 12257
  5  8261  5968  5262  5499  3740 11867  1792  8387  3994 17269
> head(tpl.one.by.one)
  V1 V2
1  6  1
2  6  1
3  5  9
4  3  6
5  3  6
6  9  7
> ncol(tpl.one.by.one)
[1] 2
> nrow(tpl.one.by.one)
[1] 156466
> tpl.one.by.one.table
   V2
V1      0     1     2     3     4     5     6     7     8     9
  0 11648 19793 10232  1453    21   456  1298  4547   589   737
  1   738   915  1661  6566   815 15094   398  4877  2100  4193
  2  2654   878  5245  4987  3526  1523  5457  4636 11107 15440
  3 59634  1518 34402 72476 25494 32259 50131 24536 20430 20600
  4  1471  2694 13608  1943  3786  1044  1755   383   516 12257
  5  8261  5968  5262  5499  3740 11867  1792  8387  3994 17269
  6  2412 43022 40281 19564 28335 35299  5786  3149  6261  6193
  7 18948 10984 13396  9673 27130 18819  4962  8883 30110 62074
  8 18840 93554 80340 13161 17987  5302  8613  1421  3155 40156
  9  7625 72508 41884  7230 63727 19756  5688 67239  2652  1987
> palette <- colorRampPalette(c("#eeeeee", "purple")) # Prepare a better colour palette
> levelplot(tpl.one.by.one.table, 
        col.regions = palette, 
        xlab = "Hundreds", 
        ylab="Tens", 
        main = "TPL one-by-one dentograph", 
        scales=(x=list(rot=90, at=seq(1, 10), 
          labels=c("General 0xx", "Philosophy, psychology 1xx", 
            "Religion 2xx", "Social sciences 3xx", "Language 4xx",  
	    "Science 5xx", "Technology 6xx", "Arts 7xx",  
 	    "Literature 8xx", "History, geography 9xx"), 
          y=list(rot=0, at=seq(1, 10), labels=10*seq(0, 9))))
      )
levelplot(tpl.one.by.one.table, 
+         col.regions = palette, 
+         xlab = "Hundreds", 
+         ylab="Tens", 
+         main = "TPL one-by-one dentograph", 
+         scales=(x=list(rot=90, at=seq(1, 10), 
+           labels=c("General 0xx", "Philosophy, psychology 1xx", 
+             "Religion 2xx", "Social sciences 3xx", "Language 4xx",  
+      "Science 5xx", "Technology 6xx", "Arts 7xx",  
+       "Literature 8xx", "History, geography 9xx"), 
+           y=list(rot=0, at=seq(1, 10), labels=10*seq(0, 9))))
+       )
> savePlot(filename="tpl-one-by-one-dentograph.png", type="png")
> tpl.one.by.two <- read.table("tpl-one-by-two.txt")
> tpl.one.by.two.table <- table(tpl.one.by.two)
> levelplot(tpl.one.by.two.table, 
        col.regions = palette, 
        xlab = "Hundreds", 
        ylab="Tens and Ones", 
        main = "TPL one-by-two dentograph", 
        scales=(x=list(at=seq(1, 10, by = 2), labels=seq(0, 9, by =2),  
        y=list(rot = 0, at=seq(11, 100, by=10), labels=paste (seq(1, 9), "0", sep="")))))
levelplot(tpl.one.by.two.table, 
+         col.regions = palette, 
+         xlab = "Hundreds", 
+         ylab="Tens and Ones", 
+         main = "TPL one-by-two dentograph", 
+         scales=(x=list(at=seq(1, 10, by = 2), labels=seq(0, 9, by =2),  
+         y=list(rot = 0, at=seq(11, 100, by=10), labels=paste (seq(1, 9), "0", sep="")))))
> savePlot(filename="tpl-one-by-two-dentograph.png", type="png")

> tpl.two.by.two <- read.table("tpl-two-by-two.txt")
> tpl.two.by.two.table <- table(tpl.two.by.two)
> levelplot(tpl.two.by.two.table, 
        col.regions = palette, 
        main="TPL two-by-two dentograph", 
        xlab="Hundreds and Tens", 
        ylab="Tens and Decimals", 
        scales=(x=list(at=seq(1,100, by=10), labels=paste(seq(0, 9), "0", sep=""))), 
        panel=function(...){ 
          panel.levelplot(...); 
          panel.abline(h=seq(11,99, by=10), lty="dashed", col="light grey"); 
          panel.abline(v=seq(11,99, by=10), lty="dashed", col="light grey") }
       )
levelplot(tpl.two.by.two.table, 
+         col.regions = palette, 
+         main="TPL two-by-two dentograph", 
+         xlab="Hundreds and Tens", 
+         ylab="Tens and Decimals", 
+         scales=(x=list(at=seq(1,100, by=10), labels=paste(seq(0, 9), "0", sep=""))), 
+         panel=function(...){ 
+           panel.levelplot(...); 
+           panel.abline(h=seq(11,99, by=10), lty="dashed", col="light grey"); 
+           panel.abline(v=seq(11,99, by=10), lty="dashed", col="light grey") }
+        )
> savePlot(filename="tpl-two-by-two-dentograph.png", type="png")
> 
