public class chgrp {

     public static void main(String[] argv) throws Exception {
        if (argv.length < 2) {
            System.err.println("chgrp: pocos augumentos");
            System.err.println("chgrp: ingrese : java chgrp <file's gid> <filename>");
            System.exit(1);
        }

        short gid = Short.parseShort(argv[0]); 
        if (gid < 0) {
            System.err.println("chgrp: La especificacionde <file's gid> es incorrecta.");
            System.exit(2);
        }

        Kernel.initialize();

        String filename = argv[1];

        int status = Kernel.chgrp(filename, gid);
        if (status < 0) {
            System.err.println("chgrp: The chgrp program aborted due to the error.");
            Kernel.exit(3);
            System.exit(3);
        }

        Kernel.exit(0);
    }
}
