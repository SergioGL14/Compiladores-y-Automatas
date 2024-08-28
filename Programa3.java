import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Programa3 {
    public static void main(String[] args) {
        String filePath = "C:\\Users\\sergi\\Downloads\\1.4 Programa 3.txt"; 

        // Contadores generales
        int totalCaracteresConEspacios = 0;
        int totalCaracteresSinEspacios = 0;
        int totalLexemas = 0;
        int totalPalabras = 0;
        int totalNumeros = 0;
        int totalCombinadas = 0;

        
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                // Actualizar conteos de caracteres
                totalCaracteresConEspacios += line.length();
                totalCaracteresSinEspacios += line.replace(" ", "").length();

                // Dividir la línea en palabras
                String[] espacios = line.split("\\s+"); // Divide por espacios en blanco

                // Procesar cada palabra de la línea
                for (String espacio : espacios) {
                    totalLexemas++;
                    if (esNumeroEntero(espacio)) {
                        totalNumeros++;
                    } else if (esPalabra(espacio)) {
                        totalPalabras++;
                    } else if (esCompuesta(espacio)) {
                        totalCombinadas++;
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {

        }

        // Mostrar resultados
        System.out.println("Total de caracteres (con espacios): " + totalCaracteresConEspacios);
        System.out.println("Total de caracteres (sin espacios): " + totalCaracteresSinEspacios);
        System.out.println("Total de lexemas: " + totalLexemas);
        System.out.println("Total de palabras: " + totalPalabras);
        System.out.println("Total de números: " + totalNumeros);
        System.out.println("Total de combinadas: " + totalCombinadas);
    }

    // Método para verificar si un token es un número entero
    private static boolean esNumeroEntero(String espacios) {
        return espacios.matches("\\d+");
    }

    // Método para verificar si un token es una palabra (solo letras)
    private static boolean esPalabra(String espacios) {
        return espacios.matches("[a-zA-Z]+");
    }

    // Método para verificar si un token es compuesto (contiene letras y dígitos)
    private static boolean esCompuesta(String espacios) {
        return espacios.matches(".*[a-zA-Z].*") && espacios.matches(".*\\d.*");
    }
}

