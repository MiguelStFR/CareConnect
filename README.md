# 1. Sobre o Trabalho

Esse repositório foi criado com o objetivo de criar um projeto para o trabalho prático disciplina de Engenharia de Software, no 5º período do curso de Engenharia da Computação, 2023/1.

O intuito do trabalho é desenvolver um projeto que contemple um do [Objetivos de Desenvolvimento Sustentável(ODS)](https://brasil.un.org/pt-br/sdgs). 

# 2. Sobre o Projeto

- ## 2.1. Motivação

	Atualmente no Brasil existem uma grande gama da população que estão em situações de vulnerabilidade, podendo ser moradores de rua ou residentes de regiões em situações precárias, que necessitam de auxílio de ONGs e Organizações Governamentais para sobreviverem. Porém nem todas as pessoas tem suas necessidades atendidas, podendo resultar em casos de abandono e esquecimento social, resultando em desnutrição, falta de roupas, utensílios básicos, moradia e renda e precarização da saúde física e mental.

	O meu projeto visa construir uma aplicação que conecte os usuários, sendo pessoas físicas, Órgão governamentais e ONGs, a pessoas vulneráveis, apontando onde elas se localizam e quais suas necessidades, afim de que os usuários possam localizá-los e ajudá-los da forma que conseguirem.

- ## 2.2. Metas abordadas

	O projeto abordará três objetivo principais, sendo eles:

	- ### ODS 1: [Erradicação da pobreza](https://brasil.un.org/pt-br/sdgs/1)

		Erradicar a pobreza em todas as formas e em todos os lugares: O tema principal do projeto, abordando toda a sua amplitude.

	- ### ODS 2: [Fome zero e agricultura sustentável](https://brasil.un.org/pt-br/sdgs/2)

		**2.1:**  _"Até 2030, acabar com a fome e garantir o acesso de todas as pessoas, em particular os pobres e pessoas em situações vulneráveis, incluindo crianças, a alimentos seguros, nutritivos e suficientes durante todo o ano"._

	- ### ODS 3: [Saúde e Bem-Estar](https://brasil.un.org/pt-br/sdgs/3)

		Garantir o acesso à saúde de qualidade e promover o bem-estar para todos, em todas as idades. Com ênfase nos tópicos:

		**3.4:** "_Até 2030, reduzir em um terço a mortalidade prematura por doenças não transmissíveis via prevenção e tratamento, e promover a saúde mental e o bem-estar_" 

		**3.8:** "_Atingir a cobertura universal de saúde, incluindo a proteção do risco financeiro, o acesso a serviços de saúde essenciais de qualidade e o acesso a medicamentos e vacinas essenciais seguros, eficazes, de qualidade e a preços acessíveis para todos_".

	- ### ODS 11: [Cidades e comunidades sustentáveis](https://brasil.un.org/pt-br/sdgs/11)

		Tornar as cidades e comunidades mais inclusivas, seguras, resilientes e sustentáveis. Com ênfase no tópico:

		**11.1:** "_Até 2030, garantir o acesso de todos à habitação segura, adequada e a preço acessível, e aos serviços básicos e urbanizar as favelas._"

- # 3. CareConnect

	O CareConnect será um aplicativo que dispõe de um mapa onde todo usuário pode inserir marcadores, que serão compartilhados simultaneamente para quem acessá-lo, e que podem ser adicionados detalhes dos locais onde os marcadores foram inseridos, como quantidade de pessoas em situação de necessidade e principais carências. Como essas pessoas podem se locomover e alterar suas localizações, como por exemplo alterar de rua, os marcadores poderão ser temporários ou então desativados por outros usuários que atenderam às necessidades descritas.

	- ## 3.1. Sobre o desenvolvimento:

		O intuito inicial é desenvolver o app em Flutter, por alguns motivos principais:

		- **3.1.1 - Acessibilidade:** Uma aplicação mobile facilita a utilização de um mapa para localizar e marcar pontos específicos. Visto que os usuários precisarão se locomoverem para encontrar esses locais.

	 	- **3.1.2 - Integrabilidade com APIs e bibliotecas:** É possivel utilizar bibliotecas prontas para incrementar o app com as funcionalidades necessárias para o desenvolvimento do projeto.

		- **3.1.3 - Conhecimento prévio:** Já tive um conhecimento prévio da linguagem, em desenvolvimento de outros projetos, facilitando a utilização da mesma.

	- ## 3.2. Requisitos funcionais:
		- **3.2.1 - Marcação de locais:** O usuário logado poderá marcar pontos em um mapa;
		- **3.2.2 - Parametrização dos marcadores:** O usuário logado poderá definir se o marcador será constante ou temporário;
		- **3.2.3 - Descrição do marcador:** O usuário logado poderá descrever detalhes do local marcado;
		- **3.2.4 - Desmarcar o local:** O usuário logado poderá desmarcar um local no mapa;
		- **3.2.5 - Buscar Locais:** O usuário poderá buscar por locais.
      
	- ## 3.3. Requisitos não-funcionais:
		- **3.3.1 - Segurança:** O sistema deve garantir que só usuários logados façam alterações no mapa;
		- **3.3.2 - Compartilhamento:** O sistema deve garantir que os marcadores sejam compartilhados para todos os usuários;
		- **3.3.3 - Disponibilidade:** O sistema deve se manter on-line;
		- **3.3.4 - Custo:** O sistema deve manter um baixo custo de manutenção e operação; 

- ## 3.4 Diagrama de Caso de Uso:
![image](https://github.com/MiguelStFR/CareConnect/assets/109636610/dae7ea8b-b713-4b74-a1a2-3333e4bde631)

