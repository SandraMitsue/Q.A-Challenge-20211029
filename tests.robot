*** Settings ***
Library           SeleniumLibrary
Resource          ./keywords.resource
Resource          ./variables.resource


*** Test Case ***
Cenário 1: Abrir o navegador e verificar se a página inicial carrega corretamente
    Dado que estou na página de login 
    Então o navegador é aberto e a página inicial carrega corretamente

Cenário 2: Navegação do menu de login para a página de criação de conta
    Dado que estou na página de login
    Quando clico em "Criar conta"
    Então eu devo ser redirecionada para a página de "cadastre-se"

Cenário 3: Criar uma conta como candidata
    Generate Random User Data
    Dado que estou na página de cadastre-se
    Quando eu preencho os campos com dados válidos
    E habilito o botão "Li e aceito a Política de Privacidade e os Termos e Condições de uso"
    E clico no botão "inscreva-se"
    Então devo ser redirecionado para a página de preenchimento do perfil

Cenário 4: Acessar a página de Preenchimento do Perfil
    Dado que estou na página de onboarding
    Quando eu preencho os campos
    E clico no botão "Próximo"
    # E preencho os dados da próxima página
    # Então sou redirecionada para a página do Scorecard
    #E clico no botão "Responde agora"


Cenário 5: Pesquisar vagas
    Dado que estou na página de login
    E realizo o login com dados cadastrados, depois clico em "Vagas"
    Quando eu pesquiso por uma empresa
    Então sou redirecionada para uma tela com uma lista de vagas abertas na empresa pesquisada

     







