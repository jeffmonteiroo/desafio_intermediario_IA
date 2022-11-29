

# Desafio Intermediário Instituto Atlantico 



# Seu Barriga

## 🔖 Requisitos funcionais

### RF - 01 Cadastro de usuário

- Deve poder cadastrar um usuário com as características conforme tabela abaixo:
- Deve retornar a mensagem de sucesso ao cadastrar um novo usuário
- Não deve permtiir o cadastro com e-mail duplicado
- Todos os campos são obrigatórios

| campos | descrição                             | tipo     | obrigatório |
| ------ | :------------------------------------ | -------- | ----------- |
| namo  | nome do usuário                    | texto    | sim         |
| email  | e-mail do usuário                  | texto  | sim         |
| senha  | senha de acesso                    | texto    | sim         |

### RF - 02 Cadastro de conta

- Deve poder cadastrar uma conta com as características conforme tabela abaixo:
- Deve retornar a mensagem de sucesso ao cadastrar uma nova conta
- Não deve permtiir o cadastro de conta com o nome duplicado
- O cmapo nome, é obrigatório

| campos | descrição                             | tipo     | obrigatório |
| ------ | :------------------------------------ | -------- | ----------- |
| nome   | nome da conta                    | texto    | sim         |


### Casos de teste

#### CT01: Realizar o cadastro de um usuário <br>
Severidade: Critica <br>
Manual [ ] Automatizado [x] <br>

#### CT02: Realizar o cadastro sem informar o nome<br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT03: Realizar o cadastro sem informar o e-mail<br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT04: Realizar o cadastro sem informar a senha<br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT05: Realizar o cadastro com todos os campos em branco<br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT06: Realizar o cadastro com o e-mail inválido <br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT07: Realizar o cadastro com e-mail já utilizado<br>
Severidade: baixa <br>
Manual [ ] Automatizado [x] <br>

#### CT08: Realizar o cadastro de conta <br>
Severidade: Critica <br>
Manual [ ] Automatizado [x] <br>

#### CT09: Realizar o cadastro com o nome de uma conta já existente <br>
Severidade: Critica <br>
Manual [ ] Automatizado [x] <br>

#### CT10: Alterar o nome de uma conta<br>
Severidade: Importante <br>
Manual [ ] Automatizado [x] <br>

#### CT11: Deletar uma conta<br>
Severidade: Importante <br>
Manual [ ] Automatizado [x] <br>

CT com Falha, pois a mensagem informada no CT é "Conta excluída com sucesso!" e a aplicação retornou: "Conta removida com sucesso!" 

## 🚀 Tecnologias

- [Python](https://www.python.org/downloads/)  - plataforma de desenvolvimento
- [Node.js](https://nodejs.org/en/download/) - plataforma de desenvolvimento
- [Robot-Framework](https://robotframework.org/?tab=1#getting-started) - framework de testes automatizados
- [Browser](https://robotframework-browser.org/#installation) - Uma moderna biblioteca para o de testes da Web desenvolvida por Playwright . Visando velocidade, confiabilidade e visibilidade.
- [Faker](https://pypi.org/project/robotframework-faker/) - biblioteca para gerar dados aleatórios
- [Jsonlibrary](https://github.com/robotframework-thailand/robotframework-jsonlibrary) - É uma biblioteca de teste do Robot Framework para manipular objetos JSON.

## 👨🏻‍💻 Como executar o projeto

[Python](https://www.python.org/downloads/) v 3.10 ou superior para executar. <br>
[Pip](https://pypi.org/project/pip/) v21 ou superior

Baixe o Python e instale, certifique-se de adicionar Python ao PATH durante a instalação.

Caso já tenha instalado, verifique se a versão esteja de acordo com o solicitado.


Windows e Linux:
```sh
python --version 
```
MacOS
```sh
python3 --version
```

Atualize o Pip e garanta que a versão mais recente seja usada

```sh
pip install -U pip
```


[Node.js] v16 ou superior para executar.

Execute os comandos abaixo para instalar das dependências do projeto e execução dos testes:

```sh
npm i
```

- [Browser] Instale o robotframework-browser a partir da linha de comando:

```sh
pip install robotframework-browser
```

Instale as dependências do node:

```sh
rfbrowser init
```

Caso o rfbrowser não seja encontrado, use:
```sh
python -m Browser.entry init
```

Para instalar a biblioteca Faker, use:
```sh
pip install robotframework-faker
```

Para instalar a biblioteca Jsonlibrary, use:
```sh
pip install -U robotframework-jsonlibrary
```

## Rodando o script
Após tudo instalado, no terminal, você pode executar os teste com esse comando abaixo: 

```sh
robot -d ./logs ./TestsCases/
```

Assim, irá executar todas as suites de testes na pasta "TestsCases"
## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feito por Jefferson Monteiro 👋 &nbsp;[Meu linkedin](https://www.linkedin.com/in/jeffmonteiroo/)
