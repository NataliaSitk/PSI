# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose(), encoding="UTF-8")
text

# Sprawdź częstości słó za pomocą pakietu qdap
install.packages("qdap")
library(qdap)


# Tworzenie chmury słów za pomocą pakietu wordcloud
install.packages("wordcloud")
library(wordcloud)

frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)

# Utwórz chmurę słów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)

# Opcje chmury słów
?wordcloud
# Zmiana wartości min.freq i max.words w celu wyświetlenia mniejszej/większej liczby słów.
# min.freq: słowa o częstości poniżej tej wartości nie będą wyświetlane
# max.words: maksymalna liczba słów do wyświetlenia

# Ograniczenie liczby słów w chmurze poprzez określenie minimalnej częstości
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)



# Ograniczenie liczby słów w chmurze poprzez określenie maksymalnej liczby słów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)



#najczestsze slowa z 2024: president, i'm, american, it's, - 
#najczestsze slowa z 2021: american, jobs, plan, americans, -

#Czy priorytety wykryte w obu przemówieniach są podobne czy różnią się?
#Tylko jedno ze słów się powtarza.