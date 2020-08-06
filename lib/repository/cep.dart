// class CepService {
//   // ignore: missing_return
//   static Future<CepModel> fetchCep(String cep) async {
//     try {
//       final response = await http.get('https://viacep.com.br/ws/$cep/json/');
//       if (response.statusCode == 200) {
//         return CepModel.fromJson(response.body);
//       }
//     } catch (e) {
//       throw Exception('Falha ao acessar o serviço');
//     }
//   }
// }
