import csv
lista_final = list()
condicao = input("Deseja cadastrar um novo produto? ")

while condicao == "Sim":
    lista = (str(input("Digite o nome do produto: ")),float(input("Digite o valor do produto: ")), str(input("Digite o tipo de embalagem: ")))
    lista_final.append(lista)
    condicao = str(input("Deseja cadastrar um novo produto? "))
#print(lista_final)

if len(lista_final) >= 5:
    with open('lista_final_2.csv','a') as arquivo:
        escritor = csv.writer(arquivo)
        escritor.writerow(("Nome do produto", "Valor do produto","Tipo de embalagem"))
        for linha in lista_final:
            escritor.writerow(linha)
else:
    print("não tem 5 produtos")


