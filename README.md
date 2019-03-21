# Doc2Vec-Projection-My-Friends
Recording conversations involving 5 people (friends, housemates, and I) from 5pm until 3am during a certain day. To explore whether Doc2Vec could display sentences based on the context in which they are spoken.
During that time, the subject moved from bus stop to the library, and then to home.
## List of Files
dictation.txt: a siri dictation version of audio file, the words are very inaccurate and unrecognizable at times, which may be due to the dialects or accent of speakers? (one person with slight Spanish accent, one person with some use of AAVE, one person with Chinese accent)
dictation_text_files.py: adding each sentence from dictation.txt to a list called data[].
ART185AI_Final.py: used for training model.
ART185AI_Final2.py: used for outputing the w2v.csv file.
## Note & Findings
Note: The "location" column in the csv file is manually entered.
Finding 1: Results for the words "most_similar" to "library" are very different depending on the value of "size" parameter in the Doc2Vec function.
  size = 50:
    [('during', 0.9399065971374512), ('finals', 0.8945882320404053), ('week', 0.8500891923904419), ('normal', 0.809099018573761), ('hav', 0.7734098434448242), ('download', 0.7643988132476807), ('well', 0.758242130279541), ('cours', 0.7370187640190125), ('fo', 0.7088320851325989), ('free', 0.7051094770431519)]
  size = 3:
    [('reminds', 0.9896957874298096), ('house', 0.9772015810012817), ('late-nigh', 0.9770265221595764), ('us', 0.9708496332168579), ('of', 0.9636290073394775), ('score', 0.9543610215187073), ('wiring', 0.9542036056518555), ('20th', 0.9516732692718506), ('two', 0.9496108293533325), ('help', 0.9470548629760742)]
Intepretation/Guesses 1: the body of sentences is too limited to have a reliable model.
Finding 2:
Overall, based on the Processing sketch of the projection, the proximity of documents do not related to their physical locations.
Finding 2.1: Two sentences both mentioning "hot water" at start and end of the sentence have very close y and z values on the processing sketch. Two sentences which both begin with "I got hot water" have very close x values.
Finding 3: All the words have y and z values that are identical. I am not sure if this is due to a mistake in preparing the model.