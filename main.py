import matplotlib.pyplot as plt

with open("time_tcpdump_1M.dat") as d:
    d = d.readlines()

data_1 = [i for i in d if "00:00" in i]


data_2 = []
for i in data_1:
    data_2.append(i.split())


data_3 = []
for i in data_2:
    for j in i:
        if "00." in j:
            data_3.append(j)


data_4 = []
for i in data_3:
    data_4.append(float(i.replace("00:00:","")))

plt.loglog(data_4, "ro")
plt.show()
