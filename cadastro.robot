*** Settings ***

Resource    ${EXECDIR}/resources/base.resource

Test Setup       Start session
Test Teardown    Finish session



*** Test Cases ***
Cadastro de dog walker com sucesso
    [Tags]    happy_path
    [Documentation]    Teste de cadastro de dog walker com sucesso

   
    Fill signup form    Jonh Doe    jonhdoe@example.com    12345678901    12345-678    123    Apt 101
    Submit signup form
    Popup have text        Recebemos o seu cadastro e em breve retornaremos o contato.


CPF incorreto
    [Tags]    cpf_inv
    [Documentation]    Teste de CPF incorreto

    Fill signup form    Jonh Doe    jonhdoe@example.com    1234567890    12345-678    123    Apt 101
    Submit signup form
    Alert have text    CPF inválido

Email incorreto
    [Tags]    email_inv
    [Documentation]    Teste de email incorreto

    Fill signup form    Jonh Doe    jonhdoe&.com    12345678901    12345-678    123    Apt 101
    Submit signup form
    Alert have text    Informe um email válido


Campos obrigatórios
    [Tags]    campos_obg
    [Documentation]    Teste de campos obrigatórios

    Submit signup form
    Alert have text    Informe o seu nome completo     
    Alert have text    Informe o seu melhor email
    Alert have text    Informe o seu CPF
    Alert have text    Informe o seu CEP
    Alert have text    Informe um número maior que zero
    Alert have text    Adcione um documento com foto (RG ou CHN)