# Projeto: Empresa de Telemarketing 

### Decrições: 
 No curso Banco de Dados (POSTGRES) da ADA focado na criação de um banco de dados sofisticado para melhorar o atendimento ao cliente, portanto foi solicitado o **Projeto: Empresa de Telemarketing**. Assim sendo, cumprimos com o solicitado. Segue-se então a modelagem para este projeto com os diagramas lógicos e conceituais que podem ser acessados pelo figma: [Projeto - Empresa Telemarketing](https://www.figma.com/file/9RcofOncitIitUS30DhaEC/Projeto%3A-Empresa-Telemarketing?type=whiteboard&node-id=0%3A1&t=Qn2SYEMrAwn7bRIJ-1), ou ver na **short-view** a baixo.

No arquivo [`docker-compose.yml`](./docker-compose.yml), é onde se encontra uma configuração docker base para subir o nosso BD utilizando o `docker-compose`. 
Inicialmente, você ainda pode adicionar os scripts de criação das tabelas manualmente, para ser mais didático, descreve-los no arquivo de configuração citado acima.

<br>
<br>

**Link dos scrips:**

| nome | link |
| ------- | -------- |
| `clientes` | [ 1° link](clientes.sql)
| `empresas_fornecedoras` | [ 2° link](empresas_fabricantes.sql)
| `empresas_fabricantes` | [ 3° link](empresas_fabricantes.sql)
| `produtos_fabricados` | [ 4° link](produtos_fabricados.sql)
| `operadores` | [ 5° link](operadores.sql)
| `lista_para_ligacao` | [ 6° link](lista_para_ligacao.sql)

- Obs - os relacionamentos super fracos estão junto de sua tabela mãe, por exemplo, a tabela de `clientes_telefones` se encontra dentro de `clientes`

<br>
<br>

**Colaboradores e Colaborações:**

| colaborador	| colaboração |
| ------- | -------- |
| Anderson Queiroz	| modelo lógico e conceitual, scripts sql, testes em BD |
| Aline Pinhelli	| modelo lógico e conceitual, scripts sql, testes em BD |
| Bruna | modelo lógico e conceitual, scripts sql, testes em BD |
| Carmen Carolina |	modelo lógico e conceitual, scripts sql, testes em BD |
| Caroline Melo |	modelo lógico e conceitual, scripts sql, testes em BD |

<br>

**Short-View:**
<iframe style="border: 1px solid rgba(0, 0, 0, 0.1);" width="800" height="450" src="https://www.figma.com/embed?embed_host=share&url=https%3A%2F%2Fwww.figma.com%2Ffile%2F9RcofOncitIitUS30DhaEC%2FUntitled%3Ftype%3Dwhiteboard%26node-id%3D0%253A1%26t%3DQn2SYEMrAwn7bRIJ-1" allowfullscreen></iframe>