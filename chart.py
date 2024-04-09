
import matplotlib.pyplot as plt
import seaborn as sns

"""Chart 1"""

supplier = 'PLNBB' # perlu penyesuaian untuk kode flask
input_target = 'GCV_ARB' # perlu penyesuaian untuk kode flask
filtered_df = df[df['Suppliers'] == supplier] # perlu penyesuaian untuk kode flask
target = filtered_df[input_target]

bins = range(int(target.min()), int(target.max()), int(target.max()/240))
mean=target.mean()


plt.figure(figsize=(14, 4))
plt.hist(target,bins=bins, edgecolor='black', alpha = 0.85, density=True)
plt.axvline(mean, color='red', linestyle='dashed', linewidth=0.6)
plt.text(mean + ((target.max()-target.min())/100), plt.ylim()[1] * 0.7, f'mean: {mean:.1f}', color='red')
plt.xlabel(input_target)
plt.ylabel('Count')
plt.show


"""Chart 2"""

supplier = 'PLNBB' # perlu penyesuaian untuk kode flask
input_target = 'GCV_ARB' # perlu penyesuaian untuk kode flask
df_filter = df[df['Suppliers'] == supplier] # perlu penyesuaian untuk kode flask


plt.figure(figsize=(14, 8)) 
sns.scatterplot(x= 'Periode', y=input_target, hue= 'Sumber_Tambang', data= df_filter)
plt.legend(bbox_to_anchor=(0.9, -0.05), ncol= 4)
plt.xlabel('')
plt.ylabel(input_target)
plt.show()