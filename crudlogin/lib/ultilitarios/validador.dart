class Validador {
  static String? validarCampo({required String value}) {
    if (value.isEmpty) {
      return 'Este espaço não pode ficar vazio';
    }

    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return 'Id do usuario não pode ser vazio';
    } else if (uid.length <= 3) {
      return 'Id do usuario tem que ser maior que 3 digitos';
    }

    return null;
  }
}