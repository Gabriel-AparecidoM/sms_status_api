🇺🇸 English Version

# SMS Status API

## 🚀 About The Project

This project is my solution to a backend challenge (https://github.com/precato/desafio-back-end) focused on creating a service to manage and report the delivery status of SMS messages. The API acts as a webhook to receive status updates from an external system and as a query tool to generate reports.

### Tech Stack and Adaptations

Although the original challenge suggested a Javascript/Node.js and relational database ecosystem, this implementation was developed using **Ruby on Rails** and **MongoDB**. This decision was made to apply and demonstrate skills with these technologies, resulting in a robust API with expressive code, following Rails conventions. All API parameters and database fields were developed in English.

## ⚙️ API Endpoints

The API implements the following endpoints to manage the message lifecycle:

| Method   | Endpoint                  | Description                                                                                                                                            |
| :------- | :------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `POST`   | `/messages`               | Registers a new message record in the system, simulating its initial dispatch by the SMS gateway. Requires `serial_id`, `phone`, and `body`.          |
| `PATCH`  | `/messages/:serial_id`    | Updates the status of an existing message, identified by its `serial_id`. Valid statuses are `SENT`, `DELIVERED`, and `FAILED`.                        |
| `GET`    | `/reports/messages`       | Returns a report of messages. It can be filtered by status (e.g., `?status=FAILED`) and by default only includes records from the last 24 hours. |

## 🛠️ Tech Stack

* **Ruby on Rails** - Backend framework used for API development.
* **MongoDB** - NoSQL database for data persistence.
* **Mongoid** - ODM (Object-Document Mapper) for elegant integration between Rails and MongoDB.
* **Puma** - Default Rails web server.


🇧🇷 Versão em Português

# API de Status de Mensagens SMS

## 🚀 Sobre o Projeto

Este projeto é a minha solução para um desafio de backend (https://github.com/precato/desafio-back-end) focado na criação de um serviço para gerenciar e relatar o status de entrega de mensagens SMS. A API funciona como um webhook para receber atualizações de status de um sistema externo e como uma ferramenta de consulta para gerar relatórios.

### Tecnologias e Adaptações

Apesar de o desafio original sugerir um ecossistema com Javascript/Node.js e um banco de dados relacional, esta implementação foi desenvolvida utilizando **Ruby on Rails** e **MongoDB**. A escolha foi feita para aplicar e demonstrar habilidades nestas tecnologias, resultando em uma API robusta e com código expressivo, seguindo os padrões do Rails. Todos os campos e parâmetros da API foram desenvolvidos em inglês.

## ⚙️ Endpoints da API

A API implementa os seguintes endpoints para gerenciar o ciclo de vida das mensagens:

| Método   | Endpoint                  | Descrição                                                                                                                                              |
| :------- | :------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `POST`   | `/messages`               | Registra uma nova mensagem no sistema, simulando o envio inicial pelo sistema de SMS. Requer `serial_id`, `phone` e `body`.                            |
| `PATCH`  | `/messages/:serial_id`    | Atualiza o status de uma mensagem existente, identificada pelo seu `serial_id`. Os status válidos são `SENT`, `DELIVERED` e `FAILED`.                    |
| `GET`    | `/reports/messages`       | Retorna um relatório de mensagens. Pode ser filtrado por status (ex: `?status=FAILED`) e por padrão retorna apenas registros das últimas 24 horas. |

## 🛠️ Tecnologias Utilizadas

* **Ruby on Rails** - Framework backend para desenvolvimento da API.
* **MongoDB** - Banco de dados NoSQL para persistência dos dados.
* **Mongoid** - ODM (Object-Document Mapper) para a integração elegante entre Rails e MongoDB.
* **Puma** - Servidor web padrão do Rails.