->after_awake

===after_awake===
    实验体已从生物缸中释放。#ActorAside
    目标状态稳定，继续监测……#ActorAside
    你能说话吗？感觉如何？#ActorSub0
    ->player_ask_questions

===player_ask_questions===
VAR SilentTimes=0
VAR AskOthers=0 
VAR AskSelf=0 
*   你是谁？#ActorSub13
    我是未来科技的首席研究员，以及现在你所在的这座人类基因与进化研究所的负责人，你可以称呼我XXX。#ActorSub0  
*   我在哪？#ActorSub13
    你现在正位于未来科技集团旗下的人类基因与进化研究所，我是这里的负责人XXX，也是未来科技集团的首席研究员。#ActorSub0
+   [{SilentTimes==0:保持沉默}{SilentTimes==1:继续沉默}{SilentTimes==2:仍然沉默}]...#ActorSub13
    ~SilentTimes+=1
    {嗯？|请问你可以说句话吗？|这个实验品可能存在认知障碍->END}
    ->player_ask_questions
- ->player_ask_questions

->END