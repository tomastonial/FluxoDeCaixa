programa {
  cadeia descricoes[5]
  real valores[5]
  cadeia datasEhoras[5]
  inteiro opcoes_menu
  inteiro contador = 0
  
  funcao inicio() {
    faca{
    escreva("O que deseja fazer \n")
    escreva("1 - Adicionar Receita \n")
    escreva("2 - Adicionar Despesa \n")
    escreva("3 - Ver relatorio \n")
    escreva("4 - Listar Saldo Atual \n")
    escreva("5 - Sair \n")
    leia(opcoes_menu)

   
    escolha(opcoes_menu){
      caso 1:
        requisitaReceita()
        pare

      caso 2:
        requisitaDespesa()
        pare

      caso 3:
        listaRelatorio()
        pare

      caso 4:
        real saldo = listaSaldoAtual()
        escreva("Saldo Atual: ", saldo, "\n")
        pare

      caso contrario:
      escreva("Obrigado por utilizar nosso fluxo de caixa!")
      pare
    }
    }enquanto(opcoes_menu != 5)
  }
  

  funcao requisitaReceita(){
    cadeia descricao
    real valor
    cadeia data

    escreva("Digite a descrição da Receita: \n")
    leia(descricao)
    escreva("Digite o valor da Receita: \n")
    leia(valor)
    escreva("Digite a data da Receita: \n")
    leia(data)
    adicionarReceita(descricao, valor, data)
  }

  funcao requisitaDespesa() {
    cadeia descricao
    real valor
    cadeia data

    escreva("Digite a descri��o da Despesa: \n")
    leia(descricao)
    escreva("Digite o valor da Despesa: \n")
    leia(valor)
    escreva("Digite a data da Despesa: \n")
    leia(data)
    adicionarDespesa(descricao, valor, data)
  }

  funcao adicionarDespesa(cadeia descricao, real valor, cadeia data) {
    descricoes[contador] = descricao
    valores[contador] = -valor  
    datasEhoras[contador] = data
    contador = contador + 1
  }

  funcao real listaSaldoAtual() {
    real saldo = 0
    para(inteiro i = 0; i < contador; i++) {
      saldo += valores[i]
    }
    retorne saldo
  }

  funcao adicionarReceita(cadeia descricao, real valor, cadeia data){
    descricoes[contador] = descricao
    valores[contador] = valor
    datasEhoras[contador] = data
    
    contador++
  }

  funcao listaRelatorio(){
    para(inteiro i = 0; i < contador; i++){
      escreva("\n Descrição: ", descricoes[i], "\n")
      escreva("Valor: ", valores[i], "\n")
      escreva("Data: ", datasEhoras[i], "\n \n")
    }
  }
}
