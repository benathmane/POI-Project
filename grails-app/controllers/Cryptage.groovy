import sun.misc.BASE64Decoder
import sun.misc.BASE64Encoder

/**
 * Created by BENATHMANE on 30/11/2015.
 */
class Cryptage {
    private static Random rand = new Random((new Date()).getTime());

    public Cryptage() {

    }
    public static String encrypt(String str) {
        BASE64Encoder encoder = new BASE64Encoder();
        byte[] salt = new byte[8];
        rand.nextBytes(salt);
        return encoder.encode(salt) + encoder.encode(str.getBytes());
    }

    public static String decrypt(String encstr) {
        if (encstr.length() > 12) {
            String cipher = encstr.substring(12);
            BASE64Decoder decoder = new BASE64Decoder();
            try {
                return new String(decoder.decodeBuffer(cipher));
            } catch (IOException e) {
                //Fail
            }
        }
        return null;
    }
}
