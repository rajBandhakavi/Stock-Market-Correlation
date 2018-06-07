import tweepy
import csv


consumerkey = "insert key here"
consumersecret = "insert secret here"
acesstoken = "insert access token here"
acesssecret = "insert access secret here"

OAUTH_KEYS = {'consumer_key':consumerkey,'consumer_secret':consumersecret,'access_token_key':acesstoken,'access_token_secret':acesssecret}
auth=tweepy.OAuthHandler(OAUTH_KEYS['consumer_key'],OAUTH_KEYS['consumer_secret'])

api = tweepy.API(auth)
s_and_p =['Affiliated Managers Group Inc']

i=0
for i in range(len(s_and_p)):
 with open(s_and_p[i] + '.csv', 'w') as csvfile:
  cwriter = csv.writer(csvfile)

  for tweet in tweepy.Cursor(api.search,
                           q = s_and_p[i]+" -filter:retweets",
                           since = "2017-12-11",
                           until = "2017-12-13",
                           lang = "en").items():


   cwriter.writerow([tweet.created_at, tweet.text.encode('utf-8'),s_and_p[i] ])
# print (tweet.created_at, tweet.text,s_and_p[i])
 csvfile.close()
 