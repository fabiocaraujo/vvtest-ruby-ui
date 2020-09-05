            #language: pt 
            Funcionalidade: Pesquisa com o QA
            Como um recrutador
            Quero colher dados da pesquisa
            Para fazer análises mais detalhadas do QA

            @smoke
            Cenário: Preencher pesquisa com dados obrigatórios válidos
            Dado que eu acesse a página da VV Test
            E acesse o menu Pesquisa - QA
            Quando eu preencher todos os campos obrigatórios
            Então deve ser direcionado para uma página de sucesso

            @tabela
            Esquema do Cenário: Preencher todos os campos da pesquisa usando tabela
            Dado que eu acesse a página da VV Test
            E acesse o menu Pesquisa - QA
            Quando eu preencher todos os campos  <nome>, <sobrenome>, <email>, <conf_email>, <tel>, <idade>, <tempo>, <atrair>, <melhorar>, <linguagem>, <msg>
            Então deve ser direcionado para uma página de sucesso

            Exemplos:
            | nome    | sobrenome | email            | conf_email       | tel           | idade   | tempo               | atrair           | melhorar    | linguagem       | msg                                   |
            | "Fábio" | "Araújo"  | "fabio@test.com" | "fabio@test.com" | "11976287787" | "31-49" | "Iniciando na área" | "Sou mega chato" | "Liderança" | "Python e Java" | "Obrigado pela pesquisa"              |
            | "Ana"   | "Primon"  | "ana@test.com"   | "ana@test.com"   | "35976287787" | "49+"   | "mais de 5 anos"    | "Desafio"        | "Técnico"   | "Todas"         | "Não sei o que estou fazendo aqui!!!" |

            @negativo
            Esquema do Cenário: Preencher pesquisa com dados in'validos ou faltantes
            Dado que eu acesse a página da VV Test
            E acesse o menu Pesquisa - QA
            Quando eu preencher todos os campos  <nome>, <sobrenome>, <email>, <conf_email>, <tel>, <idade>, <tempo>, <atrair>, <melhorar>, <linguagem>, <msg>
            Então deve exibir uma mensagem de erros <msg_erro>

            Exemplos:
            | nome  | sobrenome | email            | conf_email       | tel           | idade   | tempo               | atrair           | melhorar    | linguagem       | msg                                   | msg_erro                               |
            | ""    | "Araújo"  | "fabio@test.com" | "fabio@test.com" | "11976287787" | "31-49" | "Iniciando na área" | "Sou mega chato" | "Liderança" | "Python e Java" | "Obrigado pela pesquisa"              | "Este campo é obrigatório."            |
            | "Ana" | "Primon"  | "343434"         | "ana@test.com"   | "35976287787" | "49+"   | "mais de 5 anos"    | "Desafio"        | "Técnico"   | "Todas"         | "Não sei o que estou fazendo aqui!!!" | "Digite um endereço de e-mail válido!" |
