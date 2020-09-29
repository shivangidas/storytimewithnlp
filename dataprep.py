import numpy as np  # linear algebra
import pandas as pd  # data processing, CSV file I/O (e.g. pd.read_csv)
from sklearn.model_selection import train_test_split
import re


def main():
    df = pd.read_csv('booksummaries/booksummaries.txt', sep='\t',
                     names=['wiki_id', 'freebase_id', 'title', 'author', 'pub_date',
                            'genre', 'summary'])

    train_test_ratio = 0.6
    train_valid_ratio = 8/9
    df_full_train, df_test = train_test_split(
        df, train_size=train_test_ratio, random_state=1)
    df_train, df_valid = train_test_split(
        df_full_train, train_size=train_valid_ratio, random_state=1)

    build_dataset(df_train, 'data/train.txt')
    build_dataset(df_valid, 'data/valid.txt')
    build_dataset(df_test, 'data/test.txt')


def build_dataset(df, dest_path):
    f = open(dest_path, 'w', encoding="utf-8")
    data = ''
    summaries = df['summary'].tolist()
    for summary in summaries:
        summary = str(summary).strip()
        summary = re.sub(r"\s", " ", summary)
        bos_token = '<BOS>'
        eos_token = '<EOS>'
        data += bos_token + ' ' + summary + ' ' + eos_token + '\n'

    f.write(data)


if __name__ == "__main__":
    main()
