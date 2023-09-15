//  Crie um conversor de moedas 
// que permite o usuário digitar
//  o valor que deseja converter
//  e dê a opção de 3 moedas internacionais
programa {
  funcao menu(){
    real valor
    real valorConvertido
    inteiro opcao

    escreva("Informe o valor que deseja converter: ")
    leia(valor)
    escreva("Para qual moeda deseja converter o R$: ", valor)
    escreva("\n1 - Dolar americano")
    escreva("\n2 - Euro")
    escreva("\n3 - Pesos argentino")
    leia(opcao)
    valorConvertido = converte(opcao, valor)
    escreva(valorConvertido)
  }
  funcao converte(inteiro opcao, real valor){
    real valorConvertido
    se (opcao == 1){
      valorConvertido =  valor / 4.87
    }senao se (opcao == 2){
      valorConvertido = valor / 5.19
    }senao {
      valorConvertido = valor / 0.014
    }
    retorne valorConvertido
  }
  funcao inicio() {
    menu()
  }
}
