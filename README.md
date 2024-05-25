# Dart Socket Server

A modular Dart socket server designed to handle various types of interactions such as handshake processes and chat messages. This project follows best practices by separating concerns into controllers and services, making it maintainable, scalable, and easy to understand.

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Setup](#setup)

## Overview

This Dart socket server application handles different types of socket interactions. It uses a modular approach where logic is separated into controllers and services:

- **Controllers** manage incoming socket connections and delegate the processing of messages to the appropriate service.
- **Services** encapsulate the business logic for processing messages related to handshakes and chat.

## Project Structure

The project is organized as follows:


## Setup

1. **Install Dart SDK**: Ensure you have Dart installed on your machine. You can download it from [Dart's official website](https://dart.dev/get-dart).

2. **Clone the Repository**:
    ```bash
    git clone git@github.com:vlladislav45/dart-sockets.git
    cd dart_sockets
    ```

3. **Install Dependencies**:
    ```bash
    dart pub get
    ```

## Usage

Run the server:

```bash
dart run bin/server.dart
