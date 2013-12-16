python -x %0 %*    &goto :eof 
# -*- coding: utf-8 -*-

import subprocess, sys, os, shutil

#lendo os arquivos ini's que começam com "cntlm_"
menu=[]

for filename in os.listdir("./"):
	if filename.endswith(".ini") and filename.startswith("cntlm_"):
		menu.append(filename)
		
indice=-1

while indice==-1:
	print("*********************************************")
	print("Opções de configuração")
	for i, name in enumerate(menu):
		print(i+1, name)
	print("*********************************************\n")

	indice=input("Escolha uma das configurações acima: ")

	try:
		indice=int(indice)
		indice=indice-1
		menu[int(indice)]
	except IndexError:
		print("\nA opção selecionada não é válida!!\n")
		os.system("pause")
		indice=-1

print("\n")


print("Arquivo selecionado '%s'\n" % menu[indice])

#copia o arquivo selecionado sobre o arquivo antigo
shutil.copyfile(menu[indice], "./cntlm.ini")

print("Parando proxy")
subprocess.call("net stop cntlm", shell=True)

print("Iniciando proxy")
subprocess.call("net start cntlm", shell=True)

os.system("pause")
sys.exit()