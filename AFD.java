import java.util.*;

public class AFD {
    private int numEstados;
    private int estadoInicial;
    private Set<Integer> estadosAceptacion;
    private Map<Integer, Map<Character, Integer>> transiciones;
    private Set<Character> alfabeto;

    public AFD(int numEstados, int estadoInicial, Set<Integer> estadosAceptacion, Set<Character> alfabeto) {
        this.numEstados = numEstados;
        this.estadoInicial = estadoInicial;
        this.estadosAceptacion = estadosAceptacion;
        this.alfabeto = alfabeto;
        this.transiciones = new HashMap<>();
    }

    public void agregarTransicion(int desde, char simbolo, int hacia) {
        transiciones.putIfAbsent(desde, new HashMap<>());
        transiciones.get(desde).put(simbolo, hacia);
    }

    public boolean aceptaCadena(String cadena) {
        int estadoActual = estadoInicial;
        for (char simbolo : cadena.toCharArray()) {
            if (!alfabeto.contains(simbolo)) {
                return false; // Símbolo no pertenece al alfabeto
            }
            if (!transiciones.containsKey(estadoActual) || !transiciones.get(estadoActual).containsKey(simbolo)) {
                return false; // No hay transición definida
            }
            estadoActual = transiciones.get(estadoActual).get(simbolo);
        }
        return estadosAceptacion.contains(estadoActual);
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);


        int numes = entrada.nextInt(); // Número de estados
        int alf = entrada.nextInt(); // Tamaño del alfabeto
        int tra = entrada.nextInt(); // Número de transiciones
        int q0 = entrada.nextInt(); // Estado inicial
        int ace = entrada.nextInt(); // Número de estados de aceptación
        int cad = entrada.nextInt(); // Número de cadenas a verificar

        entrada.nextLine(); // Consumir el resto de la línea

        // Leer el alfabeto
        String[] simbolosAlfabeto = entrada.nextLine().split("\\s+");
        Set<Character> alfabeto = new HashSet<>();
        for (String simboloStr : simbolosAlfabeto) {
            if (!simboloStr.isEmpty()) {
                alfabeto.add(simboloStr.charAt(0));
            }
        }

        // Leer los estados de aceptación
        String[] estadosAceptacionStr = entrada.nextLine().split("\\s+");
        Set<Integer> estadosAceptacion = new HashSet<>();
        for (String estadoStr : estadosAceptacionStr) {
            if (!estadoStr.isEmpty()) {
                estadosAceptacion.add(Integer.parseInt(estadoStr));
            }
        }

        // Crear el AFD
        AFD afd = new AFD(numes, q0, estadosAceptacion, alfabeto);

        // Leer las transiciones
        for (int i = 0; i < tra; i++) {
            int desde = entrada.nextInt();
            String simboloStr = entrada.next();
            char simbolo = simboloStr.charAt(0);
            int hacia = entrada.nextInt();
            afd.agregarTransicion(desde, simbolo, hacia);
        }

        entrada.nextLine(); // Consumir el resto de la línea

        // Verificar las cadenas
        for (int i = 0; i < cad; i++) {
            String cadena = entrada.nextLine();
            if (afd.aceptaCadena(cadena)) {
                System.out.println("ACEPTADA");
            } else {
                System.out.println("RECHAZADA");
            }
        }

        entrada.close();
    }
}