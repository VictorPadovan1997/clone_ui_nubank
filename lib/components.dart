import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// COMPONENTES DOO HEADER
header(backgroundColor, secundaryPurple) {
  return Container(
    color: backgroundColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: secundaryPurple,
                ),
                child: Icon(
                  MdiIcons.accountOutline,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            Row(
              children: [
                _icon(MdiIcons.eyeOutline),
                _icon(MdiIcons.helpCircleOutline),
                _icon(MdiIcons.emailPlus),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            'Olá, Victor',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
  );
}

_icon(icone) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Icon(
      icone,
      color: Colors.white,
    ),
  );
}
// COMPONENTES DOO HEADER FIM

// COMPONENTES DO ACCOUNT
account() {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Conta',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              MdiIcons.chevronRight,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            'R\$ 1.0000.00',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
  );
}
// COMPONENTES DO ACCOUNT - Fim

// COMPONENTES DO ACTIONS

actions(greyColor) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _actionItem(
            icon: MdiIcons.clover,
            name: 'Pix',
            isFirst: true,
            greyColor: greyColor,
          ),
          _actionItem(
            icon: MdiIcons.barcode,
            name: 'Pagar',
            greyColor: greyColor,
          ),
          _actionItem(
            icon: MdiIcons.cash,
            name: 'Transferir',
            greyColor: greyColor,
          ),
          _actionItem(
            icon: MdiIcons.cash,
            name: 'Depositar',
            greyColor: greyColor,
          ),
          _actionItem(
            icon: MdiIcons.creditCard,
            name: 'Recarga',
            greyColor: greyColor,
          ),
          _actionItem(
            icon: MdiIcons.heartOutline,
            name: 'Doação',
            greyColor: greyColor,
          ),
        ],
      ),
    ),
  );
}

_actionItem({
  @required IconData? icon,
  @required String? name,
  bool? isFirst,
  greyColor,
}) {
  return Container(
    padding: isFirst != null && isFirst
        ? EdgeInsets.only(left: 20, right: 6)
        : EdgeInsets.symmetric(horizontal: 6),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(icon),
        ),
        Text(
          name!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
// COMPONENTES DO ACTIONS - FIM

// COMPONENTES DO CARTOES
myCards(greyColor) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: greyColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Icon(
          MdiIcons.creditCard,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Meus Cartões',
          ),
        )
      ],
    ),
  );
}
// COMPONENTES DO CARTOES - FIM

// COMPONENTES DO EMPRESTIMOS.
emprestimos(context, greyColor, backgroundColor) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          margin: EdgeInsets.only(left: 20, top: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Voce tem R\$ 100.00 disponiveis para ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'emprestimos.',
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .7,
          margin: EdgeInsets.only(left: 10, top: 10, right: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Conquiste planos futuros: conheça as opções para ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'guardar dinheiro',
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
// COMPONENTES DO EMPRESTIMOS. - fim

//Componente do Divider
divider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    child: Divider(
      thickness: 2,
    ),
  );
}
// FIM

//COMPONENTE DE CARTAO
credCard() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon(MdiIcons.creditCard),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cartão de Credito',
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              MdiIcons.chevronRight,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Fatura Atual',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          'R\$ 500,00',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Limite disponivel de 100.00',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        )
      ],
    ),
  );
}
// FIM

//Componentes do EasyInvest
easyInvest(backgroundColor) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(MdiIcons.finance),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Investimentos EasyInvest',
                style: TextStyle(fontSize: 23),
              ),
              Icon(MdiIcons.chevronRight)
            ],
          ),
        ),
        Text(
          'Voce já abriu sua conta EasyInvst para investir sem taxas e burocracia.',
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: MaterialButton(
            onPressed: () {},
            color: backgroundColor,
            child: Text(
              'Ir para EasyInvest',
              style: TextStyle(color: Colors.white),
            ),
            shape: StadiumBorder(),
          ),
        )
      ],
    ),
  );
}
//FIM

lifeInsurance() {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(MdiIcons.heartOutline),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Seguro de vida',
                style: TextStyle(fontSize: 23),
              ),
              Icon(MdiIcons.chevronRight)
            ],
          ),
        )
      ],
    ),
  );
}

discover(context, backgroundColor) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Descubra mais',
          style: TextStyle(fontSize: 20),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width * .7,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Indique seus amigos',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: MaterialButton(
                  onPressed: () {},
                  color: backgroundColor,
                  child: Text(
                    'Indicar',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: StadiumBorder(),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
