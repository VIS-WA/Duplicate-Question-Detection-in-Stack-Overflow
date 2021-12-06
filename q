[1mdiff --git a/Primary.ipynb b/Primary.ipynb[m
[1mindex f0479ef..b04c847 100644[m
[1m--- a/Primary.ipynb[m
[1m+++ b/Primary.ipynb[m
[36m@@ -178,7 +178,7 @@[m
   },[m
   {[m
    "cell_type": "code",[m
[31m-   "execution_count": 6,[m
[32m+[m[32m   "execution_count": 3,[m
    "id": "d3db5f33",[m
    "metadata": {},[m
    "outputs": [[m
[36m@@ -192,7 +192,99 @@[m
       "      dtype='object')\n",[m
       "Index(['OId', 'CreationDate', 'OTitle', 'OBody', 'OTags', 'DId', 'DTitle',\n",[m
       "       'DBody', 'DTags'],\n",[m
[31m-      "      dtype='object')\n"[m
[32m+[m[32m      "      dtype='object')\n",[m
[32m+[m[32m      "<bound method NDFrame.describe of             OId         CreationDate  \\\n",[m
[32m+[m[32m      "0            13  2008-08-01 00:42:38   \n",[m
[32m+[m[32m      "1          1033  2008-08-04 05:15:35   \n",[m
[32m+[m[32m      "2          1304  2008-08-04 14:56:57   \n",[m
[32m+[m[32m      "3          2483  2008-08-05 15:42:30   \n",[m
[32m+[m[32m      "4          6899  2008-08-09 20:11:18   \n",[m
[32m+[m[32m      "...         ...                  ...   \n",[m
[32m+[m[32m      "49995  21650011  2014-02-08 18:24:19   \n",[m
[32m+[m[32m      "49996  21650155  2014-02-08 18:35:07   \n",[m
[32m+[m[32m      "49997  21650445  2014-02-08 18:59:58   \n",[m
[32m+[m[32m      "49998  21650480  2014-02-08 19:02:21   \n",[m
[32m+[m[32m      "49999  21650503  2014-02-08 19:04:12   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                  OTitle  \\\n",[m
[32m+[m[32m      "0                            Determine a user's timezone   \n",[m
[32m+[m[32m      "1      How to get the Country according to a certain IP?   \n",[m
[32m+[m[32m      "2                            How to check for file lock?   \n",[m
[32m+[m[32m      "3               Casting: (NewType) vs. Object as NewType   \n",[m
[32m+[m[32m      "4      How to create a SQL Server function to \"join\" ...   \n",[m
[32m+[m[32m      "...                                                  ...   \n",[m
[32m+[m[32m      "49995            Adding the day to the name of a logfile   \n",[m
[32m+[m[32m      "49996     Providing Limit condition on Stream generation   \n",[m
[32m+[m[32m      "49997                  Strange addition of numbers, why?   \n",[m
[32m+[m[32m      "49998  \"Target of jump differs in high-order 4 bits f...   \n",[m
[32m+[m[32m      "49999       android: timezone offset for \"Europe/Russia\"   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                   OBody  \\\n",[m
[32m+[m[32m      "0      <p>Is there a standard way for a web server to...   \n",[m
[32m+[m[32m      "1      <p>Does anyone know any simple way to retrieve...   \n",[m
[32m+[m[32m      "2      <p>Is there any way to check whether a file is...   \n",[m
[32m+[m[32m      "3      <p>What is actually the difference between the...   \n",[m
[32m+[m[32m      "4      <p>To illustrate, assume that I have two table...   \n",[m
[32m+[m[32m      "...                                                  ...   \n",[m
[32m+[m[32m      "49995  <p>Using log4net to store text in file. from</...   \n",[m
[32m+[m[32m      "49996  <p>I am writing a code to calculate Fibonacci ...   \n",[m
[32m+[m[32m      "49997  <p>Doing:</p>\\n\\n<pre><code> 0 + 0.1 + 0.1 + 0...   \n",[m
[32m+[m[32m      "49998  <p>I am currently doing a MIPs assignment and ...   \n",[m
[32m+[m[32m      "49999  <p>I need an offset for \"Europe/Russia\" to UTC...   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                   OTags       DId  \\\n",[m
[32m+[m[32m      "0      <html><browser><timezone><user-agent><timezone...  22618056   \n",[m
[32m+[m[32m      "1                                  <ip><lookup><country>    409999   \n",[m
[32m+[m[32m      "2                               <c#><.net><io><filelock>    876473   \n",[m
[32m+[m[32m      "3                                             <c#><.net>    496096   \n",[m
[32m+[m[32m      "4                <sql><sql-server><string-concatenation>    194852   \n",[m
[32m+[m[32m      "...                                                  ...       ...   \n",[m
[32m+[m[32m      "49995  <c#><log4net><appsettings><log4net-configuration>   1165084   \n",[m
[32m+[m[32m      "49996                <java><lambda><java-8><java-stream>  20746429   \n",[m
[32m+[m[32m      "49997                                       <javascript>   6339606   \n",[m
[32m+[m[32m      "49998                                   <assembly><mips>  21566497   \n",[m
[32m+[m[32m      "49999                          <android><time><timezone>  21646807   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                  DTitle  \\\n",[m
[32m+[m[32m      "0      JavaScript timezone information how to get Ame...   \n",[m
[32m+[m[32m      "1                Getting the location from an IP address   \n",[m
[32m+[m[32m      "2           Is there a way to check if a file is in use?   \n",[m
[32m+[m[32m      "3           Casting vs using the 'as' keyword in the CLR   \n",[m
[32m+[m[32m      "4      How to concatenate text from multiple rows int...   \n",[m
[32m+[m[32m      "...                                                  ...   \n",[m
[32m+[m[32m      "49995  Log4net rolling daily filename with date in th...   \n",[m
[32m+[m[32m      "49996                      Limit a stream by a predicate   \n",[m
[32m+[m[32m      "49997        Strange result with floating point addition   \n",[m
[32m+[m[32m      "49998  Target of jump differs in high-order 4 bits fr...   \n",[m
[32m+[m[32m      "49999  android timezone difference is 1 hour less the...   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                   DBody  \\\n",[m
[32m+[m[32m      "0      <p>Im wondering is there a built in function i...   \n",[m
[32m+[m[32m      "1      <p>I want to retrieve information like the cit...   \n",[m
[32m+[m[32m      "2      <p>I'm writing a program in C# that needs to r...   \n",[m
[32m+[m[32m      "3      <p>When programming interfaces, I've found I'm...   \n",[m
[32m+[m[32m      "4      <p>Consider a database table holding names, wi...   \n",[m
[32m+[m[32m      "...                                                  ...   \n",[m
[32m+[m[32m      "49995  <p>I would like to have files named for exampl...   \n",[m
[32m+[m[32m      "49996  <p>Is there a Java 8 stream operation that lim...   \n",[m
[32m+[m[32m      "49997  <p>Why is it when I print/display the result o...   \n",[m
[32m+[m[32m      "49998  <p>I'm working on my MIPS assignment and I am ...   \n",[m
[32m+[m[32m      "49999  <p>What I need is a time difference between sp...   \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "                                                   DTags  \n",[m
[32m+[m[32m      "0                                 <javascript><timezone>  \n",[m
[32m+[m[32m      "1                          <php><geolocation><ip><geoip>  \n",[m
[32m+[m[32m      "2                <c#><.net><file><file-io><file-locking>  \n",[m
[32m+[m[32m      "3                                     <c#><casting><clr>  \n",[m
[32m+[m[32m      "4      <sql><sql-server><csv><string-concatenation><g...  \n",[m
[32m+[m[32m      "...                                                  ...  \n",[m
[32m+[m[32m      "49995                  <c#><logging><log4net><filenames>  \n",[m
[32m+[m[32m      "49996                        <java><java-8><java-stream>  \n",[m
[32m+[m[32m      "49997                                       <javascript>  \n",[m
[32m+[m[32m      "49998                                   <assembly><mips>  \n",[m
[32m+[m[32m      "49999                                <android><timezone>  \n",[m
[32m+[m[32m      "\n",[m
[32m+[m[32m      "[50000 rows x 9 columns]>\n"[m
      ][m
     }[m
    ],[m
[36m@@ -210,7 +302,7 @@[m
     "#print(df.describe())\n",[m
     "# df.drop(['CreationDate'], axis = 1)\n",[m
     "print(df.columns)\n",[m
[31m-    "# print(df.head())\n",[m
[32m+[m[32m    "print(df.describe)\n",[m
     "X_features = ['Title','Body','Tags','Topic']\n",[m
     "# a = df.loc[10].at[\"OBody\"]\n",[m
     "#print(a)\n",[m
[36m@@ -323,7 +415,7 @@[m
     }[m
    ],[m
    "source": [[m
[31m-    "sp = np.linspace(0,1,2) # change last parameter for fine tuning\n",[m
[32m+[m[32m    "sp = np.linspace(0,1,3) # change last parameter for fine tuning\n",[m
     "gco = 0 # global count\n",[m
     "ga,gb,gc = 0,0,0 # final parameter values\n",[m
     "for a in sp:\n",[m
