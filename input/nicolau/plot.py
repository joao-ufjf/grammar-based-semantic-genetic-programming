import os
import pandas as pd
from matplotlib import pyplot
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

def plot(file, error, l, w):
  #dataframe
  df = pd.read_csv(file, header = None, sep = " ")

  #rename columns
  n_func = 0
  n_var = int((len(df.columns) - 1)/2) - n_func

  columns = ['t']
  for i in range(0, n_var):
    columns.append(chr(i + 65))
  for i in range(0, n_func):
    columns.append('a' + chr(i + 65))
  for i in range(0, n_var):
    columns.append(chr(i + 65) + '*')
  for i in range(0, n_func):
    columns.append('a' + chr(i + 65) + '*')

  selected = []
  for i in range(0, n_var):
    selected.append(chr(i + 65))
  for i in range(0, n_var):
    selected.append(chr(i + 65) + '*')

  df.columns = columns
  df = df.set_index("t")
  df = df[selected]

  #figure
  # sns.set_theme(style="darkgrid")
  # fig, ax = pyplot.subplots(n_var, 1, figsize = (l, w))
  # fig.suptitle(file, fontsize=16)

  # for i in range(0, n_var):
  #   sns.lineplot(ax=ax[i], data=df.iloc[:, i], markers=True)
  #   sns.lineplot(ax=ax[i], data=df.iloc[:, i + n_var], markers=True)

  fig, axs = plt.subplots(n_var, figsize = (l, w))
  fig.suptitle(file + " " + str(error))
  for i in range(0, n_var):
    axs[i].plot(df.iloc[:, i], label = df.columns[i] + 'c', linestyle="-", marker="^")
    axs[i].plot(df.iloc[:, i + n_var], label = df.columns[i], linestyle="-", marker="o")
    axs[i].legend()

def plot_hist(file):
  #dataframe
  df = pd.read_csv(file, header = None, sep = " ")
  ax = df.plot.area()
  plt.show()