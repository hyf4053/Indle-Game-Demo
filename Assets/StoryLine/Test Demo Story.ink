VAR protagonist_name = "Sub 13"
VAR protagonist_gender = "Male"
VAR protagonist_age = 1
VAR protagonist_height = "1.95m"
//黑色背景开始
......
//翻书动画中间插入
背景提要 
blablablablablablablablablabla
blablablablablablablablablabla
blablablablablablablablablabla
blablablablablablablablablabla
背景提要结束
//动画结束

//游戏正式开始
你好。
你好。
你还能记得你的名字吗？
//玩家设定名称
我的名字是{protagonist_name}
//设定完成
很好{protagonist_name}，这里是xxxxx基地，你还记得吗。
*       [是的我还记得。] -> withMemory
*       [什么...？] -> withoutMemory

=== withMemory ===
那么看来没有多大损伤 -> DONE


=== withoutMemory ===
看来是实验出现了一些问题
*       [问题...？]
    是的{protagonist_name}，这不是你需要考虑的问题，我们会妥善解决的。->END
*       [实验...？]
    是的，一个实验，是合法的。 -> END

