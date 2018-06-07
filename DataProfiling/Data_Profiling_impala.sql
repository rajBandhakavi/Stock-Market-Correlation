create external table AnalystRecommendation
 (Stock   String,
Current_Buy   int,
1_Month_ago_Buy   int,
3_Month_ago_Buy   int,
Current_overweight   int,
1_Month_ago_Current_overweight   int,
3_Month_ago_Current_overweight   int,
Current_hold  int,
1_Month_ago_Current_hold    int,
3_Month_ago_Current_hold    int,
Current_Underweight   int,
1_Month_ago_underweight   int,
3_Month_ago_Current_underweight   int,
Current_Sell    int,
1_Month_ago_Sell    int,
3_Month_ago_Current_Sell    int,
Current_Mean   String,
1_Month_ago_Mean   String,
3_Month_ago_Current_Mean   String,
Stock_name  String,
Sector  String,
Sub_Industry   String)
 row format delimited fields terminated by ','
 location '/user/rsb503/10Nov/hive/'
 
 

select "Current_Buy" , max(Current_Buy) , min(Current_Buy) from  AnalystRecommendation;
select "1_Month_ago_Buy" , max(1_Month_ago_Buy) , min(1_Month_ago_Buy) from  AnalystRecommendation;
select "3_Month_ago_Buy" , max(3_Month_ago_Buy) , min(3_Month_ago_Buy) from  AnalystRecommendation;
select "Current_overweight" , max(Current_overweight) , min(Current_overweight) from  AnalystRecommendation;
select "1_Month_ago_Current_overweight" , max(1_Month_ago_Current_overweight) , min(1_Month_ago_Current_overweight) from  AnalystRecommendation;
select "3_Month_ago_Current_overweight" , max(3_Month_ago_Current_overweight) , min(3_Month_ago_Current_overweight) from  AnalystRecommendation;
select "1_Month_ago_Current_overweight" , max(1_Month_ago_Current_overweight) , min(1_Month_ago_Current_overweight) from  AnalystRecommendation;
select "Current_Underweight" , max(Current_Underweight) , min(Current_Underweight) from  AnalystRecommendation;
select "Current_Underweight" , max(Current_Underweight) , min(Current_Underweight) from  AnalystRecommendation;
select "1_Month_ago_underweight" , max(1_Month_ago_underweight) , min(1_Month_ago_underweight) from  AnalystRecommendation;
select "3_Month_ago_Current_underweight" , max(3_Month_ago_Current_underweight) , min(3_Month_ago_Current_underweight) from  AnalystRecommendation;
select "Current_Sell" , max(Current_Sell) , min(Current_Sell) from  AnalystRecommendation;
select "1_Month_ago_Sell" , max(1_Month_ago_Sell) , min(1_Month_ago_Sell) from  AnalystRecommendation;
select "3_Month_ago_Current_Sell" , max(3_Month_ago_Current_Sell) , min(3_Month_ago_Current_Sell) from  AnalystRecommendation;

