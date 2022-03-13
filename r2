f1 = open("yq_in.txt", "r", encoding="GBk")
f2 = open("yq_out.txt", "w+", encoding="GBK")
list1 = f1.readlines()
#print(list1)
P1 = "贵州省"
for i in list1:
    P2 = i[0:3]
    if P2 != P1:
        P1 = P2
        f2.write(P2)
        f2.write("\n")
    for j in i[3:]:
        if j == " ":
            f2.write(" ")
        else:
            f2.write(j)
print(f2.read())
f1.close()
f2.close()


