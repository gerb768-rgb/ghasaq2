// أضف هذا السطر داخل دالة _operationTile
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Scaffold(appBar: AppBar(title: Text(name)), body: Center(child: Text("صفحة $name")))),
  );
},
