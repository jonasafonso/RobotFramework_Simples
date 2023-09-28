
Funcionalidade: Cadastro de Dog Walkers

    Sendo um visitante do site que curte cuidar de pets
    Posso fazer meu cadastro como Dog Walker
    Para que eu possa ter uma nova fonte de renda com essas atividades

Modelagem de dados:
| Seletores CSS                  | Nome em Português      | Estado       | Obrigatório?  |
| ------------------------------ | ---------------------- | ------------ | ------------- |
| input[name="name"]             | Nome completo          | Habilitado   | Sim           |
| input[name="email"]            | E-mail                 | Habilitado   | Sim           |
| input[name="cpf"]              | CPF                    | Habilitado   | Sim           |
| input[name="cep"]              | CEP                    | Habilitado   | Sim           |
| input[name="addressStreet"]    | Rua                    | Desabilitado | Sim           |
| input[name="addressNumber"]    | Número                 | Habilitado   | Sim           |
| input[name="addressDetails"]   | Complemento            | Habilitado   | Não           |
| input[name="addressDistrict"]  | Bairro                 | Desabilitado | Sim           |
| input[name="addressCityUf"]    | Cidade/UF              | Desabilitado | Sim           |
| input[type="file"]             | Upload do documento    | Habilitado   | Sim           |

Cenários de aceite:

Contexto:
    Dado que visito o site Walkdog
    E que desejo me tornar Dog Walker

Cenário: Cadastro de dog walker com sucesso

    Quando submeto o formulário de cadastro com os meus dados pessoais
    Então devo ver uma mensagem de sucesso informando que meu cadastro foi para análise

Cenario: CPF incorreto

    Quando submeto o formulário infomando um cpf incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenario: Email incorreto

    Quando submeto o formulário infomando um email incorreto
    Então devo ver uma mensagem de alerta com o seguinte texto: "Informe um email válido"

Cenário: Campos obrigatórios

    Quando submeto o formulário sem preencher nehhum dos campos
    Então deve ver mensagens de alerta avisando que esses campos são obrigatórios