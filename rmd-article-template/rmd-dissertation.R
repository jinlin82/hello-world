knitr::opts_knit$set(root.dir = getwd())
knitr::opts_chunk$set(echo = TRUE, results = 'hide')
knitr::opts_chunk$set(warning = FALSE, message=FALSE)
knitr::opts_chunk$set(fig.align="center"
                      ## ,out.width="0.9\\textwidth" # latex
                      ,out.width="60%" # for both latex and html
                      ,fig.width=5, fig.height=3
                      )

rm(list=ls())
options(digits=4)
options(scipen=100)
graphics.off()
Sys.setlocale("LC_ALL", "Chinese")
library(reticulate)

frame = data.frame(普通高等学校=c("东华理工大学","江西财经大学","江西科技师范大学","华东交通大学"),问卷份数=c("196","196","140","168"))
knitr::kable(head(frame))

data = c("700","700","664","94.80%","664")
data = as.matrix(t(data))
colnames(data) = c("发放数目","回收数目","有效数目","有效率","有效总计")
rownames(data) = c("问卷")
frame2 = as.data.frame(data)
knitr::kable(head(frame2))

frame3 = data.frame(项目名称=c("学生个人消费特征","学生家庭经济情况","学生在校表现","学校对资助过程的评议民主情况","学校的政策宣传及效果","包括满意度在内的总项目"),项目数目=c("3","3","4","4","2","17"),克隆巴赫Alpha系数=c("0.856","0.863","0.920","0.943","0.897","0.965"))
knitr::kable(head(frame3))

frame3 = data.frame(项目名称=c("学生个人消费特征","学生家庭经济情况","学生在校表现","学校对资助过程的评议民主情况","学校的政策宣传及效果","包括满意度在内的总项目"),项目数目=c("3","3","4","4","2","17"),KMO系数=c("0.701","0.739","0.88","0.748","0.681","0.965"))
knitr::kable(head(frame3))
