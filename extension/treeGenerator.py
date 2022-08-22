
# Creating a DataFrame of given iris dataset.
import pandas as pd

data = pd.read_csv('in/wine_quality.csv')
data.head()

# Import train_test_split function
from sklearn.model_selection import train_test_split

data.rename(columns={'quality': 'target'}, inplace=True)
# criando a matriz de características X (dataframe) com os valores originais das variáveis, desconsiderando a última coluna (target)
X = data.drop(["target"],axis = 1)
# criando o vetor de rótulos (saída esperada do modelo para cada amostra)
y = data['target']

# Split dataset into training set and test set
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3) # 70% training and 30% test

#Import Random Forest Model
from sklearn.ensemble import RandomForestClassifier

#Create a Gaussian Classifier
clf=RandomForestClassifier(n_estimators=100)

#Train the model using the training sets y_pred=clf.predict(X_test)
clf.fit(X_train,y_train)

y_pred=clf.predict(X_test)

#Import scikit-learn metrics module for accuracy calculation
from sklearn import metrics
# Model Accuracy, how often is the classifier correct?
print("Accuracy:",metrics.accuracy_score(y_test, y_pred))

from sklearn import tree
i = 0
for t in clf.estimators_ : 
    text = tree.export_graphviz(t)
    fileName = 'in/tree'+ str(i) +'.txt'
    fileTree = open(fileName, 'w')
    fileTree.write(text)
    fileTree.close()
    print("Tree ", i, " succefully generated")
    i+= 1
