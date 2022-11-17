import 'package:counter_7/main.dart';
import 'package:counter_7/showdata.dart';
import 'package:flutter/material.dart';

class BudgetList {
  static List<Budget> contain = <Budget>[];
}

class Budget {
  String judul;
  String nominal;
  String jenisBudget;

  Budget(this.judul, this.nominal, this.jenisBudget);
}

class MyBudgetFormPage extends StatefulWidget {
  const MyBudgetFormPage({super.key});

  @override
  State<MyBudgetFormPage> createState() => _MyBudgetFormPageState();
}
class _MyBudgetFormPageState extends State<MyBudgetFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String nominal = "";
  String jenisBudget = 'Pilih Jenis';
  List<String> listJenisBudget = ['Pilih Jenis','Pengeluaran', 'Pemasukan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBudgetFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                  );
                },
              ),
            ],
          ),
        ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Judul",
                          // Menambahkan icon agar lebih intuitif
                          // Menambahkan circular border agar lebih rapi
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                          ),
                      ),
                      // Menambahkan behavior saat nama diketik 
                      onChanged: (String? value) {
                          setState(() {
                            _judul = value!;
                          });
                      },
                      // Menambahkan behavior saat data disimpan
                      onSaved: (String? value) {
                          setState(() {
                              _judul = value!;
                          });
                      },
                      // Validator sebagai validasi form
                      validator: (String? value) {
                          if (value == null || value.isEmpty) {
                              return 'Judul tidak boleh kosong!';
                          }
                          return null;
                      },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik 
                    onChanged: (String? value) {
                        setState(() {
                          nominal = value!;
                        });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                        setState(() {
                            _judul = value!;
                        });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                        if (value == null || value.isEmpty) {
                            return 'Nominal tidak boleh kosong!';
                        }
                        return null;
                    },
                  ),
                ),
                DropdownButton(
                    value: jenisBudget,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: listJenisBudget.map((String items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                    );
                    }).toList(),
                    onChanged: (String? newValue) {
                    setState(() {
                        jenisBudget = newValue!;
                    });
                  },
                ),
                TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
              
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 15,
                          child: Container(
                            child: ListView(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              shrinkWrap: true,
                              children: <Widget>[
                                Center(
                                    child: const Text(
                                        'Berhasil Menambahkan Data')),
                                SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Kembali'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    BudgetList.contain.add(Budget(_judul, nominal, jenisBudget));
                  }
                },
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}