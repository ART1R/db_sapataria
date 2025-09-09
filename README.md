# Banco de Dados - Sapataria

Este repositório contém os **scripts SQL** e o **modelo físico** do banco de dados `db_sapataria`, que simula uma loja de calçados.

---

## 📂 Estrutura do Repositório

- **scripts/** → Contém todos os scripts SQL:
  - `create_tables.sql` → Criação das tabelas.
  - `inserts.sql` → Inserção de dados de exemplo.
  - `consultas.sql` → Consultas de exemplo (JOIN, LIKE, BETWEEN, DISTINCT, etc.).

- **modelo/** → Contém o modelo físico do banco:
  - `modelo_fisico.png` → Diagrama ER exportado de ferramenta como MySQL Workbench ou BrModelo.

- **README.md** → Este arquivo.

---

## ⚡ Como usar

1. Clone o repositório:
```bash
git clone https://github.com/SEU_USUARIO/db_sapataria.git
cd db_sapataria
Acesse o MySQL e crie o banco:

sql
Copiar código
SOURCE scripts/create_tables.sql;
SOURCE scripts/inserts.sql;
Execute consultas de exemplo:

sql
Copiar código
SOURCE scripts/consultas.sql;
