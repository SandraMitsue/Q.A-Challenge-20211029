*** Settings ***
Library           SeleniumLibrary
Resource          ./tests.resource


*** Test Case ***
Cenário 1: Abrir o navegador e verificar se a página inicial carrega corretamente
    Dado que estou na página de login https://beta.coodesh.com/auth/signin
    Então o navegador é aberto e a página inicial carrega corretamente

Cenário 2: Navegação do menu de login para a página de criação de conta
    Dado que estou na página de login https://beta.coodesh.com/auth/signin
    Quando clico em "Criar conta"
    Então eu devo ser redirecionada para a página de "cadastre-se"

Cenário 3. Criar uma conta como candidata
    Generate Random User Data
    Dado que estou na página de cadastre-se https://beta.coodesh.com/auth/signup/users
    Quando eu preencho os campos com dados válidos
    E habilito o botão "Li e aceito a Política de Privacidade e os Termos e Condições de uso"
    E clico no botão "inscreva-se"
    Então devo ser redirecionado para a página de preenchimento do perfil

Cenário 4. Acessar a página de Preenchimento do Perfil
    Dado que estou na página de onboarding
    Quando eu preencho os campos
    E clico no botão "Próximo"
    E preencho os dados da próxima página
    # Então sou redirecionada para a próxima página de formulários 

#Cenário 5: Acessar a tela de vagas








