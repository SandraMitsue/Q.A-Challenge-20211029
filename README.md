# Automação de Teste com Robot Framework

# VÍDEO DE APRESENTAÇÃO DO PROJETO
https://www.loom.com/share/d6647d1404574be68c9a0ab79b1217ac?sid=6135de56-f0b8-430c-93cd-8ec66168e215

Este projeto realiza testes automatizados em uma aplicação usando Robot Framework.

O objetivo do projeto é automatizar tarefas como criar uma conta de usuário, acessar a página de preenchimento de perfil, pesquisar vagas e verificar a navegação entre as páginas.


## Arquivos do Projeto

O projeto consiste em três arquivos principais:

1. `tests.robot`: contém os cenários de teste.
2. `variables.resource`: contém as variáveis usadas nos testes.
3. `keywords.robot`: contém as palavras-chave personalizadas utilizadas nos testes, incluindo a geração de dados de usuário aleatórios.

## Pré-requisitos

1. Python 3.11.4
2. Pip (Gerenciador de Pacotes do Python)
3. Robot Framework 4.1.1
4. SeleniumLibrary 6.0.0
5. WebDriver para o navegador que você deseja usar (Chrome, Firefox, etc.)
6. FakerLibrary (opcional, para gerar dados fictícios)

## Instalação

1. Instale o Python: https://www.python.org/downloads/
2. Instale o Pip. Normalmente, o Pip é instalado com o Python. Se não estiver, siga estas instruções: https://pip.pypa.io/en/stable/
3. Instale o Robot Framework. Abra um terminal e execute `pip install robotframework 4.1.1`
4. Instale a SeleniumLibrary. No terminal, execute `pip install robotframework-seleniumlibrary 6.0.0`
5. Instale o WebDriver adequado. Para o Chrome, você pode baixar o ChromeDriver aqui: https://chromedriver.chromium.org/downloads
6. Instale a FakerLibrary. No terminal, execute `pip install robotframework-faker`

## Execução dos testes

Para rodar os testes, abra um terminal e navegue até a pasta do projeto. Execute o seguinte comando:

`robot tests.robot`


# INSTRUÇÕES DO DESAFIO - Q.A. Challenge 20211029

Por favor, complete o seguinte desafio para seguir com a sua candidatura. Você deverá documentar o seu processo e apresentá-lo em um vídeo (utilizando um PowerPoint ou apresentação semelhante), bem como demonstrar o resultado.

### Antes de começar
 
- Prepare o projeto para ser disponibilizado no Github, copiando o conteúdo deste repositório para o seu (ou utilize o fork do projeto e aponte para o Github). Confirme que a visibilidade do projeto é pública (não esqueça de colocar no readme a referência a este challenge);
- O projeto deve utilizar a Linguagem específica na sua Vaga (caso esteja se candidatando). Por exempo: Python, R, Scala e entre outras;
- Considere como deadline 5 dias a partir do início do desafio. Caso tenha sido convidado a realizar o teste e não seja possível concluir dentro deste período, avise a pessoa que o convidou para receber instruções sobre o que fazer.
- Documentar todo o processo de investigação para o desenvolvimento da atividade (README.md no seu repositório); os resultados destas tarefas são tão importantes do que o seu processo de pensamento e decisões à medida que as completa, por isso tente documentar e apresentar os seus hipóteses e decisões na medida do possível.

## Desafio

Neste desafio aplicaremos os conceitos de teste caixa preta, onde testaremos a página Beta da [Coodesh](https://beta.coodesh.com/) em vários aspectos como por exemplo:

- Se a home carrega corretamente
- Se o sistema de login está funcionando
- Se os formulários do preenchimento do perfil estão carregando e com validações

## Parte 1 - Escolha do Frawework

Para realizar o teste podemos escolher entre os 3 frameworks de teste:

- Cucumber
- Selenium
- Cypress
- Robot Framework

Explicar o porquê da escolha, as vantagens e desvantagens dos que não foram escolhidos.

## Parte 2 - Mãos à Obra

Nesse parte teremos que desenvolver um projeto para testar vários aspectos da página Beta da Coodesh:

- https://beta.coodesh.com/


Testes para aplicar:

**Obrigatório 1** - Se a página está carregando corretamente a home page;

**Obrigatório 2** - Navegar pela página de login no menu superior;

**Obrigatório 3** - Agora o seu sistema de teste automatizado deverá criar uma conta para o perfil de pessoas candidatas;

**Obrigatório 4** - Ao criar a conta você será direcionado ao sistema para o preenchimento do perfil. O seu teste automatizado deverá testar os formulários que estarão em cada etapa do preenchimento do perfil;

> Nota: utilize dados fictícios criados através do site https://randomuser.me/

**Obrigatório 5** - Um vez na tela de vagas, nosso sistema de teste automatizado terá que buscar por `uma empresa` onde terá um ou mais resultados de vagas;

**Deferencial** - Você poderá automatizar testes para a criação de contas com redes sociais (github, linkedin e google)

## Parte 3 - Finalização e Instruções para a Apresentação

Avisar sobre a finalização e enviar para correção.

1. Confira se você respondeu o Scorecard da Vaga que chegou no seu email;
2. Confira se você respondeu o Mapeamento Comportamental que chegou no seu email;
3. Acesse: [https://coodesh.com/challenges/review](https://coodesh.com/challenges/review);
4. Adicione o repositório com a sua solução;
5. Grave um vídeo, utilizando o botão na tela de solicitar revisão da Coodesh, com no máximo 5 minutos, com a apresentação do seu projeto. Foque em pontos obrigatórios e diferenciais quando for apresentar.
6. Adicione o link da apresentação do seu projeto no README.md.
7. Verifique se o Readme está bom e faça o commit final em seu repositório;
8. Confira a vaga desejada;
9. Envie e aguarde as instruções para seguir no processo. Sucesso e boa sorte. =)

## Suporte

Use a [nossa comunidade](https://coodesh.com/desenvolvedores#community) para tirar dúvidas sobre o processo ou envie um e-mail para contato@coodesh.com.


