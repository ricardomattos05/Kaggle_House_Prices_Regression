

devtools::install_github("ldurazo/kaggler")
library(kaggler)

kgl_auth(username = "ricardomattos05", key = "532d92e738b4899f308a733662b9cc38")


comps1 <- kaggler::kgl_competitions_list()
comps1


comps2 <- kaggler::kgl_competitions_list(page = 6)
comps2

c1_datalist <- kgl_competitions_data_list(comps1$id[6])
c1_datalist

#baixnado arquivos
for (i in 1:nrow(c1_datalist)) {
df <-  kgl_competitions_data_download(comps1$id[6], 
                                 c1_datalist$name[i])
  
  write.csv(df, c1_datalist$name[i])
  
}
