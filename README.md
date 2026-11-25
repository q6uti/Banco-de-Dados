<div align="center">

# `SELECT * FROM Banco-de-Dados`

**Repositório de estudos, diagramas e scripts SQL do curso Técnico em Desenvolvimento de Sistemas.**

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original-wordmark.svg" width="80" alt="MySQL" />
![brModelo](https://img.shields.io/badge/brModelo-F57C00?style=for-the-badge&logo=diagramsdotnet&logoColor=white)

</div>

---

### 🖥️ `DESCRIBE disciplina;`

Em vez de uma tabela comum, aqui estão os metadados deste repositório em formato de consulta:

```sql
+----------------+-------------------------------------------------------------------+

| Campo          | Valor                                                             |
+----------------+-------------------------------------------------------------------+

| Curso          | Técnico em Desenvolvimento de Sistemas                            |
| Orientador     | Prof. Caio Malheiros (://github.com)                     |
| Ferramentas    | brModelo (Conceitual/Lógico) & MySQL (Físico/Scripts)             |
| Objetivo       | Documentar práticas de modelagem e manipulação de dados           |
+----------------+-------------------------------------------------------------------+
```

---

### 🗂️ Mapa de Diretórios

Clique nos módulos abaixo para visualizar o que cada pasta guarda:

<details>
<summary><b>📐 01. Modelagem de Dados (brModelo)</b></summary>
<br>
Arquivos <code>.brM3</code> e imagens exportadas contendo:
<ul>
  <li>Levantamento de entidades, atributos e relacionamentos (DER).</li>
  <li>Definição de cardinalidades (1:1, 1:N, N:N) e chaves primárias/estrangeiras.</li>
  <li>Conversão do Modelo Conceitual para o Modelo Lógico.</li>
</ul>
</details>

<details>
<summary><b>🏗️ 02. Estruturação — DDL (MySQL)</b></summary>
<br>
Scripts <code>.sql</code> focados na arquitetura do banco:
<ul>
  <li>Criação de bancos e tabelas (<code>CREATE DATABASE</code>, <code>CREATE TABLE</code>).</li>
  <li>Tipos de dados, restrições (<code>NOT NULL</code>, <code>UNIQUE</code>, <code>AUTO_INCREMENT</code>) e relacionamentos.</li>
  <li>Alterações e exclusões estruturais (<code>ALTER TABLE</code>, <code>DROP</code>).</li>
</ul>
</details>

<details>
<summary><b>✏️ 03. Manipulação — DML (MySQL)</b></summary>
<br>
Scripts <code>.sql</code> para gerenciamento de registros:
<ul>
  <li>Povoamento de tabelas (<code>INSERT INTO</code>).</li>
  <li>Atualização e remoção segura de dados (<code>UPDATE</code> e <code>DELETE</code> com <code>WHERE</code>).</li>
</ul>
</details>

<details>
<summary><b>🔍 04. Consultas — DQL (MySQL)</b></summary>
<br>
Scripts <code>.sql</code> voltados para extração de relatórios:
<ul>
  <li>Filtros, operadores lógicos e ordenação (<code>SELECT</code>, <code>WHERE</code>, <code>ORDER BY</code>).</li>
  <li>Funções de agregação (<code>COUNT</code>, <code>SUM</code>, <code>AVG</code>, <code>GROUP BY</code>).</li>
  <li>Junções entre tabelas (<code>INNER JOIN</code>, <code>LEFT JOIN</code>).</li>
</ul>
</details>

---

### 📌 Log de Execução (Atividades)

* **[x]** `Atividade 01` — Modelagem Conceitual e Lógica *(brModelo)*
* **[x]** `Atividade 02` — Criação de Tabelas e Relacionamentos *(MySQL)*
* **[ ]** `Atividade 03` — Inserção de Dados e Consultas Simples *(MySQL)*
* **[ ]** `Atividade 04` — Relatórios com JOINs *(MySQL)*

---

<div align="right">
  <sub><i>Commit após commit, construindo a base de dados. 🚀</i></sub>
</div>
