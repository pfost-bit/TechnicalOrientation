Class Data
================
Patrick Foster

## Fall 24 MSDS Computer Data

The following graphs are pulled from the data set. The first two are the
qualitative data sets that could not be captured with a histogram.




First we have to read in the data using pandas. The data exists in a CSV file.


```python
df = pd.read_csv("2023-06-13-survey.csv")
```


Here we rename the headers to be more manageable

```python
df = df.rename(columns={'Operating System': 'os', 'CPU Cycle Rate (in GHz)':'CPU', 'CPU Number of Cores (int)': 'cores', 'RAM (in GB)':'RAM', 'Hard Drive Size (in GB)':'Memory','GPU (short description as a string)': 'GPU', 'GPU CUDA Number of Cores (int)':'CODA'})
df.pop('Timestamp')

df
               
```





<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>os</th>
      <th>CPU</th>
      <th>cores</th>
      <th>RAM</th>
      <th>Memory</th>
      <th>GPU</th>
      <th>CODA</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Windows</td>
      <td>3.0</td>
      <td>8</td>
      <td>16</td>
      <td>935</td>
      <td>NVIDIA</td>
      <td>5888</td>
    </tr>
    <tr>
      <th>1</th>
      <td>MacOS</td>
      <td>3.2</td>
      <td>8</td>
      <td>8</td>
      <td>256</td>
      <td>APPLE</td>
      <td>8</td>
    </tr>
    <tr>
      <th>2</th>
      <td>MacOS</td>
      <td>3.6</td>
      <td>12</td>
      <td>32</td>
      <td>1000</td>
      <td>APPLE</td>
      <td>38</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Windows</td>
      <td>2.3</td>
      <td>8</td>
      <td>16</td>
      <td>500</td>
      <td>NVIDIA</td>
      <td>2560</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Windows</td>
      <td>3.3</td>
      <td>4</td>
      <td>16</td>
      <td>475</td>
      <td>NVIDIA</td>
      <td>2560</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>56</th>
      <td>Windows</td>
      <td>2.5</td>
      <td>2</td>
      <td>8</td>
      <td>237</td>
      <td>INTEL</td>
      <td>0</td>
    </tr>
    <tr>
      <th>57</th>
      <td>MacOS</td>
      <td>2.3</td>
      <td>2</td>
      <td>8</td>
      <td>256</td>
      <td>APPLE</td>
      <td>0</td>
    </tr>
    <tr>
      <th>58</th>
      <td>MacOS</td>
      <td>2.3</td>
      <td>2</td>
      <td>8</td>
      <td>500</td>
      <td>APPLE</td>
      <td>0</td>
    </tr>
    <tr>
      <th>59</th>
      <td>Windows</td>
      <td>1.8</td>
      <td>5</td>
      <td>8</td>
      <td>224</td>
      <td>INTEL</td>
      <td>5</td>
    </tr>
    <tr>
      <th>60</th>
      <td>MacOS</td>
      <td>2.3</td>
      <td>2</td>
      <td>8</td>
      <td>250</td>
      <td>INTEL</td>
      <td>0</td>
    </tr>
  </tbody>
</table>
<p>61 rows × 7 columns</p>
</div>


First we have a look at the operating systems that are being used by the cohort. I use a bar plot for the qualatative data.

```python
df['os'].value_counts().plot.bar(title = 'Operating Systems')
```




    
![png](output_3_1.png)
    


The types of GPUs.



    
![png](output_4_1.png)
    


The amount of computing power based off the CPU clock speed. Here we switch to histograms.

```python
df['CPU'].plot.hist(alpha = .5, title = 'CPU clock speed in GHz')
```

    
![png](output_5_1.png)
    


How many cores that each machine has.




    
![png](output_6_1.png)
    

How much RAM each machine has. 


    
![png](output_7_1.png)
    

Finally how much storage each machine has.



![png](output_8_1.png)
    

