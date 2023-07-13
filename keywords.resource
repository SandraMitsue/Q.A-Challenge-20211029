*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ./variables.resource

*** Keywords ***

Generate Random User Data
    ${first_name}=   FakerLibrary.Name 
    ${last_name}=    FakerLibrary.LastName
    ${email}=        FakerLibrary.Email
    ${password}=     FakerLibrary.Password
    ${phone}=        FakerLibrary.PhoneNumber
    ${city}=         FakerLibrary.City
    Set Suite Variable  ${FULL_NAME}         ${first_name} ${last_name}
    Set Suite Variable  ${EMAIL}             ${email}
    Set Suite Variable  ${PASSWORD}          ${password}
    Set Suite Variable  ${PHONE}             ${phone}
    Set Suite Variable  ${CITY}              ${city}

# Cenário 1: Abrir o navegador e verificar se a página inicial carrega corretamente

Dado que estou na página de login 
    Open Browser        ${URL}     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Performance Cookies    5     
    Click Button        ${BUTTON_COOKIE}

Então o navegador é aberto e a página inicial carrega corretamente
    Location Should Be  https://beta.coodesh.com/auth/signin
    Title Should Be     Entrar | Coodesh

# Cenário 2: Navegação do menu de login para a página de criação de conta

Quando clico em "Criar conta"
    Click Element       ${BUTTON_CREATE_ACCOUNT}

Então eu devo ser redirecionada para a página de "cadastre-se"
    Location Should Be  https://beta.coodesh.com/auth/signup/users
    Title Should Be     Cadastre-se | Coodesh

# Cenário 3. Criar uma conta como candidata

Dado que estou na página de cadastre-se
    Title Should Be     Cadastre-se | Coodesh

Quando eu preencho os campos com dados válidos
    Input Text          id=field-6    ${FULL_NAME} 
    Input Text          id=field-7    ${EMAIL}          
    Input Text          id=field-8    ${PASSWORD}      

E habilito o botão "Li e aceito a Política de Privacidade e os Termos e Condições de uso"
    Click Element       ${TERMS_OF_USE}

E clico no botão "inscreva-se"      
    Click Button        ${BUTTON_SIGNUP}

Então devo ser redirecionado para a página de preenchimento do perfil
    Wait Until Page Contains    Dados pessoais    10
    Title Should Be     Dados pessoais | Coodesh

# Cenário 4: Acessar a página de Preenchimento do Perfil
Dado que estou na página de onboarding
    Title Should Be     Dados pessoais | Coodesh

Quando eu preencho os campos
    Scroll Element Into View            ${SCROLL1}
    Click Element                       ${QA}
    Scroll Element Into View            ${SCROLL2}
    Wait Until Element Is Visible       ${AUTOMATION}
    Click Element                       ${AUTOMATION}
    Scroll Element Into View            ${SCROLL3}
    Wait Until Element Is Visible       ${EXPERIENCE}  5
    Press Keys                          ${EXPERIENCE}    \ue014   
    Click Element                       ${PROFESSIONAL_MOMENT}
    Click Element                       ${NEW_OPPORTUNITIES}
    Input Text                          ${WHATSAPP}    12999999999
    Input Text                          ${CITY_SLOT}   ${CITY}
    Scroll Element Into View            ${SCROLL4}
    Click Element                       ${REMOTE}

E clico no botão "Próximo"
    Click Button                        ${BUTTON_NEXT}

# E preencho os dados da próxima página
   

# Cenário 5: Pesquisar vagas
E realizo o login com dados cadastrados, depois clico em "Vagas"
    Input Text                          ${EMAIL_SLOT}       ${LOGIN_EMAIL}  
    Input Text                          ${PASSWORD_SLOT}    ${LOGIN_PASSWORD}
    Click Button                        ${ENTER}
    Wait Until Element Is Visible       ${VACANCIES}  8
    Click Element                       ${VACANCIES}
    Sleep  5      

Quando eu pesquiso por uma empresa
    Input Text                          ${SEARCH_COMPANIES}   Big Bang Theory        
    Sleep  3
    Click Button                        ${BUTTON_SEARCH}
    
Então sou redirecionada para uma tela com uma lista de vagas abertas na empresa pesquisada
    Location Should Be      https://beta.coodesh.com/jobs?search=Big+Bang+Theory
    Title Should Be         Vagas locais e remotas de Big Bang Theory | Coodesh
