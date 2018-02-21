MICE是"Multiple Imputation by Chained Equations"的縮寫，與k-NN（k-nearest neighbors）同樣被廣泛使用於估計並填補缺失值（missing values）。其大致原理步驟如下：

1. 對資料集（dataset）中所有缺失值進行簡單的填補（例如使用該欄位已知資料的平均值填進該欄位的所有缺失值）。這樣的填補過程可以想成是先把原缺失值的位置「佔滿」。
2. 把其中一個欄位（"var"）已填好的缺失值改回缺失的狀態。
3. 將步驟2被選中的"var"視為依變數（dependent variable），其它（部分或全部）欄位為自變數（independent variable），建立迴歸模型。此模型可以是一般線性迴歸（linear model）、羅吉斯迴歸（logistic model）或其它能預測欄位"var"資料型態的模型。
4. 使用步驟3建立的模型，預測並填補"var"中的缺失值。接下來，"var"會成為預測其它欄位缺失值時的自變數，而"var"中原先就存在的資料以及在本步驟被預測產生的資料，都會被納入自變數中。
5. 重複步驟2到步驟4，直至所有有缺失值的欄位都被走訪過一次，稱為完成一個「循環」（cycle/iteration）。當一個循環結束時，所有原先的缺失值都已被填補，並且填補的內容是根據迴歸模型反映原先資料中的觀測值（observed data）彼此的關係。
6. 重複步驟2到步驟4以完成數次循環，每次循環中，填補原缺失值的數值會不斷被更新。循環次數一般而言會設定在十次，不過也要視資料大小以及運算資源多寡而定。

完成步驟1至步驟6之後，會產生一個新的資料集。通常會重複步驟1至步驟6至少五到十次，產生多個資料集，並將所有產生的資料集綜合起來進行後續分析。

（以上步驟理解整理、翻譯自[Azur, M. J., Stuart, E. A., Frangakis, C., & Leaf, P. J. (2011). Multiple imputation by chained equations: What is it and how does it work?. *International Journal of Methods in Psychiatric Research*, 20(1), 40-49.](http://onlinelibrary.wiley.com/doi/10.1002/mpr.329/full)）

MICE有一個很重要的前設，那就是所有的缺失值必須都是隨機產生，且可以被其它已觀測到的資料解釋（[missing at random, MAR](https://en.wikipedia.org/wiki/Missing_data#Missing_at_random)）。例如一份問卷的「財務收入」欄位若有缺失值且可能是因為填寫人沒有收入來源，那麼這裡的缺失值就不是MAR，而缺失本身就是產生缺失值的原因。

另外，在上述步驟4的預測填補過程中，有一點決定MICE運算是否正確的關鍵：拿來預測缺失值的模型係數，並非直接取自該模型的係數期望值（Beta），而是從每一個係數的聯合分佈中，隨機抽取數組係數組合（Beta\*）（[Gibbs sampling](https://en.wikipedia.org/wiki/Gibbs_sampling) from [joint probability distribution](https://en.wikipedia.org/wiki/Joint_probability_distribution) of Beta），再用Beta\*中的組合各自預測並嘗試填補缺失值，最後被選中的結果，是在Beta\*中，模型輸出含較為接近原已知觀測值的。如此過程稱為predictive mean matching（PMM），能確保對缺失值的填補仍有足夠的變異性。

在R與Python各自有實現MICE的套件：
* [mice](https://cran.r-project.org/web/packages/mice/index.html) in R
  * Reference: [Stef van Buuren, Karin Groothuis-Oudshoorn (2011). mice: Multivariate Imputation by Chained Equations in R. *Journal of Statistical Software*, 45(3), 1-67.](https://www.jstatsoft.org/article/view/v045i03)
  * GitHub: [stefvanbuuren/mice](https://github.com/stefvanbuuren/mice)
* [fancyimpute](https://pypi.python.org/pypi/fancyimpute) in Python
  * GitHub:
    1. [iskandr/fancyimpute](https://github.com/iskandr/fancyimpute)
    2. [Ouwen/scikit-mice](https://github.com/Ouwen/scikit-mice)

----

延伸閱讀：
* [Schafer, J. L., & Graham, J. W. (2002). Missing data: Our view of the state of the art. *Psychological Methods*, 7(2), 147-177.](http://psycnet.apa.org/record/2002-13431-001)
* [Imputation by Predictive Mean Matching: Promise & Peril | Statistical Horizons](https://statisticalhorizons.com/predictive-mean-matching)
