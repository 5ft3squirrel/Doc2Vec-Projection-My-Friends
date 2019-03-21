from gensim.models.doc2vec import Doc2Vec, TaggedDocument
from nltk.tokenize import word_tokenize
from gensim.test.utils import datapath
import os
from sklearn.manifold import TSNE
import re
import pandas as pd
import os

script_dir = os.path.dirname(__file__)
model = Doc2Vec.load(script_dir+ '/d2v.model')

docvecs = model.docvecs
docs = list(model.docvecs.doctags)
X = model[docs]

tsne = TSNE(n_components=3)
X_tsne = tsne.fit_transform(X)

df = pd.DataFrame(X_tsne, index=docs, columns=['x', 'y', 'z'])
df.to_csv(script_dir+'/d2v.csv')
print(df)
