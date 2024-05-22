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
    escreva("3 - Ver relátorio \n")
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


  funcao adicionarReceita (cadeia descricao, real valor, cadeia data){
    descricoes[contador] = descricao
    valores[contador] = valor
    datasEhoras[contador] = data
    
    contador++
  }

  funcao requisitaDespesa(){
    cadeia descricao_despesa
    real valor_despesa
    cadeia data_despesa

    escreva("Digite a descrição da Despesa: \n")
    leia(descricao_despesa)
    escreva("Digite o valor da Despesa: \n")
    leia(valor_despesa)
    escreva("Digite a data da Despesa: \n")
    leia(data_despesa)

    adicionarReceita(descricao_despesa, valor_despesa, data_despesa)
  }

  funcao adiconarDespesa(cadeia descricao_despesa, real valor_despesa, cadeia data_despesa){
    descricoes[contador] = descricao_despesa
    valores[contador] = valor_despesa * -1
    datasEhoras[contador] = data_despesa

    contador ++
  }


  funcao real listaSaldoAtual(){
    real saldo = 0
    para(inteiro i = 0; i < contador; i++){
      saldo += valores[i]
    }
    retorne saldo
  }
}
