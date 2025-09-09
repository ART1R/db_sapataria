# Banco de Dados - Sapataria

Este repositório contém os **scripts SQL** e o **modelo físico** do banco de dados `db_sapataria`, que simula uma loja de calçados feito como parte de um trabalho da disciplina de Fundamentos de Banco de Dados.

---

## 📂 Estrutura do Repositório

- **scripts/** → Contém todos os scripts SQL:
  - `schema.sql` → Criação das tabelas.
  - `data.sql` → Inserção de dados de exemplo.
  - `updates.sql` → Exemplos de Update.
  - `deletes.sql` → Exemplos de Delete.
  - `selects.sql` → Consultas de exemplo (JOIN, LIKE, BETWEEN, DISTINCT, etc.).

- **modelo/** → Contém o modelo físico do banco:
  - `modelo_fisico.png` → Diagrama exportado diretamente do MySQL Workbench.

- **README.md** → Este arquivo.

---

## ⚡ Como usar

1. Clone o repositório:
```bash
git clone https://github.com/SEU_USUARIO/db_sapataria.git
cd db_sapataria
```

2. Acesse o MySQL, crie o banco e adicione os dados de exemplo:
```bash
SOURCE scripts/create_tables.sql;
SOURCE scripts/inserts.sql;
```

3. Execute atualizações de exemplos nas tabelas:
```bash
SOURCE scripts/updates.sql;
```

4. Execute exclusões de exemplos na tabela:
```bash
SOURCE scripts/deletes.sql;
``` 

5. Execute consultas de exemplo:
```bash
SOURCE scripts/consultas.sql;
```
