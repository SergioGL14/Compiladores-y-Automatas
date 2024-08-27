import java.util.Scanner;

public class Programa2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingresa la cadena: ");
        String entrada = scanner.nextLine();
        
        
        String[] espacios = entrada.split("\\s+");
        
        // Contadores para cada categoría
        int numEnteros = 0;
        int numPalabras = 0;
        int numCompuestas = 0;
        
        for (String espacio : espacios) {
            if (esNumeroEntero(espacio)) {
                numEnteros++;
            } else if (esPalabra(espacio)) {
                numPalabras++;
            } else if (esCompuesta(espacio)) {
                numCompuestas++;
            }
        }
        
        // Mostrar resultados
        if (numEnteros > 0) {
            System.out.println(numEnteros + " entero");
        }
        if (numPalabras > 0) {
            System.out.println(numPalabras + " palabra");
        }
        if (numCompuestas > 0) {
            System.out.println(numCompuestas + " compuesta");
        }
        
        scanner.close();
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

