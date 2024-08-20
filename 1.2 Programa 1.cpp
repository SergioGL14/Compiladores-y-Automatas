#include <iostream>
#include <string>
#include <cctype>

int main() {
    std::string cadena;
    bool tieneLetras = false, tieneDigitos = false;

    std::cout << "Ingresa la cadena: ";
    std::getline(std::cin, cadena);

    for (std::string::size_type i = 0; i < cadena.length(); ++i) {
        char ch = cadena[i];
        if (std::isalpha(ch)) {
            tieneLetras = true;
        } else if (std::isdigit(ch)) {
            tieneDigitos = true;
        }
    }

    if (tieneLetras && tieneDigitos) {
        std::cout << "Compuesta\n";
    } else if (tieneLetras) {
        std::cout << "Palabra\n";
    } else if (tieneDigitos) {
        std::cout << "Numero entero\n";
    } else {
        std::cout << "La cadena no contiene letras ni números\n";
    }

    return 0;
}


