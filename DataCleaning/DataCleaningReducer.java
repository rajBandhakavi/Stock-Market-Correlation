import java.io.IOException;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class DataCleaningReducer
extends Reducer<Text, IntWritable, Text, IntWritable>{
  public void reduce(Text word, Iterable<IntWritable> values, Context context) throws IOException, InterruptedException
  {
   int count = 0;
     for(IntWritable value: values)
     {
     count = count + value.get();
     }
     context.write(word, new IntWritable(count));
  }

}