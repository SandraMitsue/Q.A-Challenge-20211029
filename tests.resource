*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary

*** Variables ***
${BROWSER}                 Chrome
${URL}                     https://beta.coodesh.com/auth/signin       
${URL_CADASTRO}            https://beta.coodesh.com/auth/signup/users

*** Keywords ***

Generate Random User Data
    ${first_name}=   FakerLibrary.Name 
    ${last_name}=    FakerLibrary.LastName
    ${email}=        FakerLibrary.Email
    ${password}=     FakerLibrary.Password
    ${phone}=        FakerLibrary.PhoneNumber
    ${city}=         FakerLibrary.City
    Set Suite Variable  ${NOME_COMPLETO}     ${first_name} ${last_name}
    Set Suite Variable  ${EMAIL}             ${email}
    Set Suite Variable  ${SENHA}             ${password}
    Set Suite Variable  ${PHONE}             ${phone}
    Set Suite Variable  ${CITY}             ${city}

# Cenário 1: Abrir o navegador e verificar se a página inicial carrega corretamente

Dado que estou na página de login https://beta.coodesh.com/auth/signin
    Open Browser         ${URL}     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Performance Cookies    5
    Click Button        xpath=//*[@id="onetrust-accept-btn-handler"]

Então o navegador é aberto e a página inicial carrega corretamente
    Location Should Be  https://beta.coodesh.com/auth/signin
    Title Should Be     Entrar | Coodesh

# Cenário 2: Navegação do menu de login para a página de criação de conta

Quando clico em "Criar conta"
    Click Element    xpath=//*[@id="content"]/div/div[1]/div/nav/div/div/div[4]/div[1]/a

Então eu devo ser redirecionada para a página de "cadastre-se"
    Location Should Be  https://beta.coodesh.com/auth/signup/users
    Title Should Be     Cadastre-se | Coodesh

# Cenário 3. Criar uma conta como candidata

Dado que estou na página de cadastre-se https://beta.coodesh.com/auth/signup/users
    Title Should Be     Cadastre-se | Coodesh

Quando eu preencho os campos com dados válidos
    Input Text         id=field-6    ${NOME_COMPLETO} 
    Input Text         id=field-7    ${EMAIL}          
    Input Text         id=field-8    ${SENHA}      

E habilito o botão "Li e aceito a Política de Privacidade e os Termos e Condições de uso"
    Click Element      xpath=//*[@id="tabs-12--tabpanel-0"]/div/div[5]/label[1]/span

E clico no botão "inscreva-se"      
    Click Button       xpath=//*[@id="tabs-12--tabpanel-0"]/div/button[2] 

Então devo ser redirecionado para a página de preenchimento do perfil
    Wait Until Page Contains    Dados pessoais    10
    Title Should Be     Dados pessoais | Coodesh

# Cenário 4. Acessar a página de Preenchimento do Perfil
Dado que estou na página de onboarding
    Wait Until Page Contains    Dados pessoais    10
    Title Should Be     Dados pessoais | Coodesh

Quando eu preencho os campos
    Scroll Element Into View   xpath=//*[@id="__next"]/div[3]/div/div/div/div/div[1]/form/div[4]/div[1]/div[1]/div[1]/div[1]
    Click Element    css:form > div > div:nth-child(7)
    Scroll Element Into View   xpath=//*[@id="__next"]/div[3]/div/div/div/div/div[1]/form/div[5]/div[2]/label
    Wait Until Element Is Visible  css:form div.form-text.text-muted > div > span:nth-child(1)
    Click Element   css:form div.form-text.text-muted > div > span:nth-child(1)
    Scroll Element Into View  css:#__next > div.container.space-bottom-3.space-top-2.container > div > div > div > div > div.fade.p-0.tab-pane.active.show > form > div:nth-child(6) > div:nth-child(2) > div:nth-child(3) > small > div > label
    Press Keys  css:#__next > div.container.space-bottom-3.space-top-2.container > div > div > div > div > div.fade.p-0.tab-pane.active.show > form > div:nth-child(5) > div.mb-7.mt-3.form-group.col-lg-12.col-sm-6.col-12 > div > div.rc-slider-handle    \ue014
    Click Element    xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[5]/div[1]/select
    Click Element    xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[5]/div[1]/select/option[3]
    Input Text         xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[5]/div[2]/div[1]/div[1]/input   12999999999
    Input Text         xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[5]/div[3]/div[1]/input  ${city}
    Scroll Element Into View  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[7]
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[1]/form/div[6]/div/div[1]

E clico no botão "Próximo"
    Click Button  xpath=/html/body/div[1]/div[4]/div/div/div/div/button

E preencho os dados da próxima página
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[1]/div[3]/div/div[1]/div[1]/div[1]
    Scroll Element Into View  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[1]/div[3]/label
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[1]/div[4]/select/option[5]
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[1]/div[5]/select/option[3]
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[1]/div[6]/select/option[2]
    Scroll Element Into View  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[2]/div/label
    Click Element  xpath=/html/body/div[1]/div[3]/div/div/div/div/div[2]/form/div[2]/div/select/option[2]
    Click Element  xpath=/html/body/div[1]/div[4]/div/div/div/div/button[2]


