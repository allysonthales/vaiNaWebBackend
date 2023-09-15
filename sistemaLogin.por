// Construa um sistema de login e verifique se 
// as credenciais estão corretas. Se as credenciais
//  estiverem erradas em 3 tentativas, bloqueie o usuário.
programa {
    funcao inicio() {
    logico acesso = falso
    inteiro tentativa = 0

    faca{
      acesso = menu()
      tentativa++
    }enquanto(acesso == falso e tentativa < 3 )
    se(acesso == falso){
    escreva("Numero maximo de tentativas atingido.")
  }senao{
    escreva("Login realizado com sucesso")
  }
  }
  funcao menu(){
    cadeia usuario
    cadeia senha
    logico valido
    escreva("Digite o usuario:")
    leia(usuario)
    escreva("Digite a senha:")
    leia(senha)
    

    valido = validaUsuario(usuario, senha)
    retorne valido
  }
  funcao validaUsuario(cadeia usuario, cadeia senha){
    logico retorno

    se(usuario == "admin" e senha == "admin"){

      retorno = verdadeiro

    }senao{
      retorno = falso
    }
    retorne retorno
  } 
}
