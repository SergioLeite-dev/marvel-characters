
# Olá Mottu!! 🛵 Este é o app que me pediram para fazer, espero que gostem!

## Diferenciais do meu projeto:

### Infinite Scroll (paginação - requisito do nível 3)
- Para acessar os próximos personagens da lista, o usuário do app não precisa clicar para ir para a próxima página, basta que ele chegue no final da lista que a API é consumida novamente e os resultados dessa próxima "página" são inseridos na própria lista de personagens.
- Em termos de UI/UX essa funcionalidade é esperada nos Apps modernos.
- Isso foi feito sem o uso de bibliotecas externas.

### Favoritos
- Não foi pedido, mas faz sentido poder favoritar alguns personagens em um app que mostra uma lista enorme deles.

## Aqui está a lista de requisitos, com tudo o que cumpri até agora:

### Etapas Iniciais:
:heavy_check_mark: Fazer um **fork** deste repositório para o seu Github, de forma **privada**, e adicionar os usuarios `@brunosmm`, `@BetoMottu`, `@moreirawebmaster`,`@jeanchrocha,` `@astraube`.
> Não existe exatamente forks privados, o que eu fiz foi um clone --bare do repositório original seguido de um push --mirror para este repositório privado.

:heavy_check_mark: Criar um projeto Flutter com a seguinte configuração de package: `com.mottu.marvel`.

:heavy_check_mark: Criar uma conta de desenvolvedor em `developer.marvel.com`.

:heavy_check_mark: Gerar uma **API KEY** no site de desenvolvedor da **Marvel**, e consumir suas respectivas **API's**.

### **Sugestões:**
:heavy_check_mark: Não faça apenas um commit com toda sua implementação.

:heavy_check_mark: Realize os commits em branchs separadas e utilize PRs.

:heavy_check_mark: Seja criativo(a) na sua implementação.

:heavy_check_mark: Não faça **Ctrl+C / Ctrl+V** de outro repositório !!!
> O pessoal focou mais na parte do *fork* do que do *privado* rs...



### NÍVEL 1 -  branch (level_1):
:heavy_check_mark: Executar etapas iniciais;

:heavy_check_mark: Mostrar a listagem dos personagens (imagem e nome);

:heavy_check_mark: Ação de clique nos cards da listagem e exibir os detalhes (imagem, nome e descrição);


### NÍVEL 2 - branch (level_2):
:heavy_check_mark: Executar etapas iniciais;

:x: Guardar em cache as consultas realizadas na API Marvel;

:heavy_check_mark: Mostrar a listagem dos personagens (imagem e nome);

:heavy_check_mark: Criar um filtro para a listagem;

:heavy_check_mark: Ação de clique nos cards da listagem e exibir os detalhes (imagem, nome, descrição e  :x: personagens relacionados);


### NÍVEL 3:
:heavy_check_mark: Executar etapas iniciais;

:x: Criar uma Splashscreen customizada;

:x: Guardar em cache as consultas realizadas na API Marvel;

:x: Limpar cache de consultas no fechamento do APP;

:heavy_check_mark: Mostrar a listagem dos personagens (imagem e nome);

:heavy_check_mark: Criar um filtro para a listagem;

:heavy_check_mark: Ciar uma <b>paginação</b> da listagem; :heavy_check_mark::heavy_check_mark:

:heavy_check_mark: Ação de clique nos cards da listagem e exibir os detalhes (imagem, nome, descrição e personagens relacionados);

:heavy_check_mark: Ação de clique nos personagens relacionados e exibir os detalhes (imagem, nome, descrição e :x: personagens relacionados);


### Pontos extras:
:heavy_check_mark: Utilizar Getx.

:x: Configurar Firebase crashlytics.

:x: Criar channel em kotlin, capturar a mudança de conexão, e mostrar uma mensagem de offline no flutter.
