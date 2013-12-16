Multipes Cntlm Profiles
===========

Objetivo
--------

Muitas vezes precisamos ter vários proxys configurados no computador ou notebook, principalmente se usamos o computador em varias redes, ou VPNs.
Este script, construído inicialmente para a plataforma Windows, vai ajudar você a manter múltiplos perfis de proxy configurados, permitindo mudar de um para o outro de forma simples e rápida.

Funcionamento
-----------------
O <a href=https://sourceforge.net/projects/cntlm/files/cntlm/>Cntlm</a> é um proxy para autenticação, ele libera um endereço onde os programas podem se conectar a ele, e ele irá se conectar ao proxy real e fazer a autenticação, este script irá alterar a configuração do Cntlm

                                 setproxy.bat
                                       V
    |================|    |================|    |================| 
    | Seus programas | => | CNTLM +   .ini | => | Proxy Externo  |
    |================|    |================|    |================| 


Utilização
-----------

1.Instale o <a href="http://python.org/download/">Python 3.3</a> ou superior, escolha  a opção "Add python.exe to Path", ou faça isso depois

2.Instale o <a href=https://sourceforge.net/projects/cntlm/files/cntlm/>Cntlm</a>

3.Copie o arquivo setproxy.bat para o diretório de instalação do cntlm (aqui foi "C:\Program Files (x86)\Cntlm")

4.Defina os arquivos de configuração no mesmo diretório seguindo o padrão "cntlm_DESC.ini", onde "DESC" é a descrição do seu arquivo, ex: "cntlm_redex.ini" ou "cntlm_empresay.ini"

4.1.Não defina nomes com acentos ou espaços, o Windows suporta mas sempre tem a possibilidade de quebrar alguma coisa

5.Para facilitar crie um atalho para o setproxy.bat em seu desktop

6.Click no atalho


O resultado deve ser algo como:

    *********************************************
    Opções de configuração
    1 cntlm_redex.ini
    2 cntlm_empresay.ini
    *********************************************
    
    Escolha uma das configurações acima:
    
é só escolher o número correspondente e pressionar Enter

se tudo correr bem o Cntlm já estará rodando, é só configurar os programas que precisam utilizar proxy para o endereço 127.0.0.1 porta 3128
