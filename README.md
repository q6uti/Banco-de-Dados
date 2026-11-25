<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:4479A1,100:F57C00&height=220&section=header&text=Banco%20de%20Dados&fontSize=54&fontColor=ffffff&animation=fadeIn&fontAlignY=36&desc=Estudos%20%7C%20Diagramas%20%7C%20Scripts%20SQL&descSize=20&descAlignY=58" alt="Banco de Dados" width="100%" />

<a href="https://git.io/typing-svg">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=500&size=20&pause=1200&color=4479A1&center=true&vCenter=true&width=640&lines=SELECT+*+FROM+conhecimento%3B;CREATE+TABLE+projetos+(...)%3B;INSERT+INTO+experiencia+VALUES+(...)%3B;COMMIT%3B" alt="Animação de digitação SQL" />
</a>

<br>

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![brModelo](https://img.shields.io/badge/brModelo-F57C00?style=flat-square&logo=diagramsdotnet&logoColor=white)
![SQL](https://img.shields.io/badge/Linguagem-SQL-informational?style=flat-square)
![Curso](https://img.shields.io/badge/Curso-T%C3%A9cnico%20em%20Desenvolvimento%20de%20Sistemas-success?style=flat-square)
![Status](https://img.shields.io/badge/Status-Em%20andamento-yellow?style=flat-square)

</div>

<br>

> [!NOTE]
> Este repositório é o meu **caderno digital de Banco de Dados**: cada pasta guarda uma etapa do caminho, do desenho no papel até o relatório com `JOIN`.

---

## 🧾 Ficha Técnica

| | |
|---|---|
| 🎓 **Curso** | Técnico em Desenvolvimento de Sistemas |
| 👨‍🏫 **Orientador** | Prof. Caio Malheiros |
| 🛠️ **Ferramentas** | brModelo (modelo Conceitual e Lógico) e MySQL (modelo Físico e scripts) |
| 🎯 **Objetivo** | Documentar práticas de modelagem e manipulação de dados |

<div align="center">

<img src="https://skillicons.dev/icons?i=mysql,git,github,vscode" alt="Ferramentas" />

</div>

---

## 🧭 Trilha de Aprendizado

```text
Progresso geral   ████████░░░░░░░░   50%   (2 de 4 atividades)
```

| # | Atividade | Ferramenta | Status |
|:-:|-----------|:----------:|:------:|
| 01 | Modelagem Conceitual e Lógica | brModelo | ✅ Concluída |
| 02 | Criação de Tabelas e Relacionamentos | MySQL | ✅ Concluída |
| 03 | Inserção de Dados e Consultas Simples | MySQL | ⏳ Em breve |
| 04 | Relatórios com JOINs | MySQL | ⏳ Em breve |

---

## 🧩 Exemplo de Modelo Entidade-Relacionamento

Um DER simples, no mesmo estilo dos diagramas que desenho no brModelo:

```mermaid
erDiagram
    ALUNO ||--o{ MATRICULA : realiza
    CURSO ||--o{ MATRICULA : possui

    ALUNO {
        int id PK
        varchar nome
        varchar email
    }
    CURSO {
        int id PK
        varchar titulo
        int carga_horaria
    }
    MATRICULA {
        int id PK
        int aluno_id FK
        int curso_id FK
        date data_matricula
    }
```

---

## 📚 Guia Rápido: o que cada sigla faz

| Sigla | Significa | Serve para | Comandos principais |
|:-----:|-----------|------------|---------------------|
| **DDL** | Data Definition Language | Criar e alterar a **estrutura** | `CREATE` · `ALTER` · `DROP` |
| **DML** | Data Manipulation Language | Mexer nos **registros** | `INSERT` · `UPDATE` · `DELETE` |
| **DQL** | Data Query Language | **Consultar** e gerar relatórios | `SELECT` · `WHERE` · `JOIN` · `GROUP BY` |

<details>
<summary>👀 Ver um exemplo de cada um</summary>

```sql
-- DDL: cria a estrutura
CREATE TABLE aluno (
    id    INT AUTO_INCREMENT PRIMARY KEY,
    nome  VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE
);

-- DML: insere um registro
INSERT INTO aluno (nome, email)
VALUES ('Maria Souza', 'maria@email.com');

-- DQL: consulta os dados
SELECT nome, email
FROM aluno
ORDER BY nome;
```

</details>

> [!TIP]
> Rode os scripts sempre na ordem **DDL → DML → DQL**. As consultas dependem de tabelas e dados que já existam.

---

## 🗂️ Estrutura do Repositório

```text
Banco-de-Dados/
├── 📐 01-modelagem/      → arquivos .brM3 e imagens dos diagramas
├── 🏗️ 02-ddl/            → scripts de criação e alteração de tabelas
├── ✏️ 03-dml/            → scripts de INSERT, UPDATE e DELETE
├── 🔍 04-dql/            → consultas e relatórios
└── 🖼️ assets/            → imagens usadas neste README
```

---

## ▶️ Como Executar

```bash
# clonar o repositório
git clone https://github.com/SEU-USUARIO/Banco-de-Dados.git
cd Banco-de-Dados

# executar um script no MySQL
mysql -u root -p < 02-ddl/criar_tabelas.sql
```

---

<div align="center">

*Commit após commit, construindo a base de dados.* 🚀

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:F57C00,100:4479A1&height=120&section=footer" alt="" width="100%" />
