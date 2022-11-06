#待练习
#https://www.jianshu.com/p/50fac745eb76 如下
#https://www.jianshu.com/p/d70c9fcbb030

library(raster)
#install.packages("ncdf4")
library(ncdf4)
library(rasterVis)
library(lattice)

##读取单变量长时间序列nc数据
ncfile<-nc_open("E:/临时/CN_Prec_MonthlyMean_1km_1960.nc")
names(ncfile$var)# 决定下面的varname

input_nc = "E:/临时/CN_Prec_MonthlyMean_1km_1960.nc"
varname = "pre"
##压缩呈栅格栈
raster1 = stack(input_nc, varname = varname)

outpath<-"E:/"# 输出路径，需要提前建好文件夹
##为文件名设置做准备
x1<-c(1:12)
x2<-paste("1960",x1,sep = "")
out_filename<-sapply(x2, function(x)paste(x,".tif",sep = ""))      #输出tif格式
out_path<-sapply(out_filename, function(x){
  paste(outpath,x,sep = "/")})                #输出路径名

#一个月的tiff文件需要5.65s，12个月需要86.04s
for(i in 1:12){
  writeRaster(raster1[[i]],out_path[i], format = 'GTiff', overwrite = TRUE)
}
system.time()