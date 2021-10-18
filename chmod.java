import java.util.ArrayList;

public class chmod {

    public static void main(String[] args) {
        
        //java -cp . chmod /home 011
        String filename = "";// /home 011
        Short mode = 0;//     011


        if (args.length % 2 == 0 && args.length != 0) {// que los argumentos sean correctos
                filename = args[0];
                if (args[1].length() != 3) { // 000
                    System.out.println("Error Chmod:Modo con longitud "+ args[1].length()+" se requiere de longitud 3 ");
                    System.exit(1);
                }
                mode = Short.parseShort(args[1], 8);
        } else {
            System.out.println("Error Chmod: requiere de 2 argumentos");
            System.exit(2);
        }

        try {
            Kernel.initialize();

                int res = Kernel.chmod( filename, mode ) ;
                if ( res < 0 )
                {
                    Kernel.perror( "chmod" ) ;
                    System.err.println("Chmod: no se puede cambiar el modo de la fila seleccionada \"" + filename + "\"" ) ;
                    Kernel.exit( 3 ) ;
                }
            
            Kernel.exit(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}