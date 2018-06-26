rm(list=ls())
cat("\014")
library(jsonlite)
library(igraph)
all.equal(mtcars, fromJSON(toJSON(mtcars)))


#get json file form Lost Circles Chrome plugin

G = fromJSON("tauhid.zaman.3.json")
E = G$links
V = G$nodes

from = E[,1]+1
to = E[,2]+1
names= V$name
id = (1:length(V$name))
edges = data.frame(from,to)
nodes = data.frame(id,names)
write.csv(nodes,"tauhid.zaman.3.nodes.csv", row.names=FALSE)
write.csv(edges,"tauhid.zaman.3.edges.csv" ,row.names=FALSE)

