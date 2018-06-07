import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
public class DataProfilingMapper
extends Mapper<LongWritable, Text, Text, IntWritable> {
private static final int MISSING = 9999;
@Override
public void map(LongWritable key, Text value, Context context)
throws IOException, InterruptedException {
String line = value.toString();
String[] words=line.split(",");
String[] column_names = {"Stock","Current_Buy","1_Month_ago_Buy","3_Month_ago_Buy","Current_overweight","1_Month_ago_Current_overweight","3_Month_ago_Current_overweight",
"Current_hold","1_Month_ago_Current_hold","3_Month_ago_Current_hold","Current_Underweight","1_Month_ago_underweight",
"3_Month_ago_Current_underweight","Current_Sell","1_Month_ago_Sell","3_Month_ago_Current_Sell","Current_Mean","1_Month_ago_Mean",
"3_Month_ago_Current_Mean","Stock_name","Sector","Sub Industry"};
for(int i=0;i<22;i++)
 {
   
   context.write(new Text(column_names[i]), new IntWritable(words[i].length()));
 }
}
}