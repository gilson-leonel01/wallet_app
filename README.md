# Wallet App

![Wallet App](https://github.com/gilson-leonel01/wallet_app/blob/1f0fb1d0a78d8b4ecd3f0c931889a5a92a59b0cc/projectFrames.png)

## 📌 Visão Geral

**Wallet App** é uma carteira digital desenvolvida em Flutter e Dart para facilitar a gestão financeira dos usuários. Com suporte para pagamentos, transferências e análise de gastos, a aplicação integra autenticação via Google Auth e Facebook Auth, além de processamento de pagamentos com Stripe.

## 🚀 Executando o Projeto

Siga as instruções abaixo para configurar e rodar o projeto localmente.

### 1️⃣ Clonando o Repositório

Primeiro, clone o repositório do projeto:

```sh
git clone https://github.com/gilson-leonel01/wallet_app.git
cd wallet_app
```

### 2️⃣ Configuração do Ambiente

#### Backend (Flutter, Dart, Firebase)

##### 📌 Pré-requisitos:
- Flutter SDK instalado (versão 3.29.2).
- Configuração do Firebase para autenticação e banco de dados.

##### 📌 Configuração:

1. Instalar as dependências:
   ```sh
   flutter pub get
   ```
2. Configurar Firebase:
   - Criar um projeto no Firebase.
   - Configurar autenticação com Google Auth e Facebook Auth.
   - Configurar Firestore para armazenamento de dados.

#### Frontend (Flutter, Dart)

1. Iniciar o servidor de desenvolvimento:
   ```sh
   flutter run
   ```

A aplicação estará disponível em: `http://localhost:8080`.

## 📝 Funcionalidades

- 📌 Autenticação via Google Auth e Facebook Auth.
- 📌 Gerenciamento de saldo e transações.
- 📌 Processamento de pagamentos com Stripe.
- 📌 Análise de gastos e relatórios financeiros.
- 📌 Suporte a múltiplas moedas.
- 📌 Notificações push para alertas de transações.
- 📌 Integração com APIs bancárias para sincronização de contas.

## 🛠️ Tecnologias Utilizadas

### 🔹 Backend:
- Firebase Authentication
- Firestore para armazenamento de dados
- Cloud Functions para automação de processos

### 🔹 Frontend:
- Flutter
- Dart
- Google Auth
- Facebook Auth
- Stripe SDK para Flutter
- Provider para gerenciamento de estado

## 📌 Links úteis

- [Documentação do Flutter](https://flutter.dev/docs)
- [Firebase](https://firebase.google.com/docs)
- [Stripe para Flutter](https://stripe.com/docs/payments/accept-a-payment?platform=mobile)

## 🤝 Contribuição

Contribuições são bem-vindas! Para contribuir:

1. Fork o repositório.
2. Crie uma nova branch (`git checkout -b minha-feature`).
3. Faça as alterações e commite (`git commit -m 'Minha nova feature'`).
4. Envie um pull request.

---

Desenvolvido com 💙 por [G!](https://github.com/gilson-leonel01)

