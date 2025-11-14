void main() {
  Conta contaMatheus = Conta('Matheus', 1500.0);
  Conta contaRoberta = Conta('Roberta', 1500.0);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  print('-' * 30);
  print('Contas iniciais:');
  for (Conta conta in contas) {
    print('Titular: ${conta.titular}, Saldo Inicial: ${conta.saldo}');
  }
  print('');

  contaMatheus.receber(1000);
  print('-' * 30);
  print('Dinheiro recebido');
  print('Titular: ${contaMatheus.titular}, Saldo Atualizado: ${contaMatheus.saldo}');

  contaRoberta.receber(1500);
  print('-' * 30);
  print('Dinheiro recebido');
  print('Titular: ${contaRoberta.titular}, Saldo Atualizado: ${contaRoberta.saldo}');

  contaRoberta.transferir(500);
  print('-' * 30);
  print('Dinheiro transferido');
  print('Titular: ${contaRoberta.titular}, Saldo Atualizado: ${contaRoberta.saldo}');
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor) {
    saldo += valor;
  }

  void transferir(double valor) {
    saldo -= valor;
  }
}





// Exercício de Receita
void receita() /*main()*/ {
  Receita item1 = Receita("Macarrão ao pesto", 20.00);
  Receita item2 = Receita("Lasanha 4 queijos", 32.00);
  Receita item3 = Receita("Burrata com pesto", 28.00);

  List<Receita> receitas = <Receita>[item1, item2, item3];

  for (Receita receita in receitas) {
    print('Nome: ${receita.nome}, Preço: ${receita.preco}');
  }
}

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}





// Exercício de Estoque
void estoque() /*main()*/ {
  ItemEstoque smartphone = ItemEstoque('Smartphone', 50, 2999.99);
  ItemEstoque notebook = ItemEstoque('Notebook', 50, 4999.99);
  ItemEstoque tablet = ItemEstoque('Tablet', 50, 1999.99);

  //smartphone
  smartphone.registrarEntrada(20);
  smartphone.registrarSaida(40);
  //notebook
  notebook.registrarEntrada(30);
  notebook.registrarSaida(70);
  //tablet
  tablet.registrarEntrada(25);
  tablet.registrarSaida(10);

  // Atualizando o preço do Notebook
  notebook.atualizarPreco(4799.99);

  print('Produto: ${smartphone.nomeProduto}, Quantidade em estoque: ${smartphone.quantidade}');
  print('Produto: ${notebook.nomeProduto}, Quantidade em estoque: ${notebook.quantidade}');
  print('Produto: ${tablet.nomeProduto}, Quantidade em estoque: ${tablet.quantidade}');
}

class ItemEstoque {
  String nomeProduto;
  int quantidade;
  double preco;

  ItemEstoque(this.nomeProduto, this.quantidade, this.preco);

  void registrarEntrada(int disponivel) {
    quantidade += disponivel;
  }

  void registrarSaida(int disponivel) {
    if (quantidade >= disponivel) {
      quantidade -= disponivel;
      print('Saída registrada com sucesso.');
    } 
    else {
      print('Quantidade insuficiente em estoque para realizar a saída.');
    }
  }

  void atualizarPreco(double novoPreco) {
    preco = novoPreco;
    print('Preço atualizado para R\$ $preco');
  }
}
