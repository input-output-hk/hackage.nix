{
  "0.1.0.0" = {
    sha256 = "a3f14dd27f9295ed3b649fbb70d39f048bc1b5be66fbc9f880fdfb750d339cf7";
    revisions = {
      r0 = {
        nix = import ../hackage/shibuya-kafka-adapter-0.1.0.0-r0-6e052960754dd1a914e51aa40868972686305cc72a8d09a57bd25d00e7404ce6.nix;
        revNum = 0;
        sha256 = "6e052960754dd1a914e51aa40868972686305cc72a8d09a57bd25d00e7404ce6";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "e3ace630ce19b4f84e1c5fccc85bc3b0602b40b5d9f72664f649a2244a6b6901";
    revisions = {
      r0 = {
        nix = import ../hackage/shibuya-kafka-adapter-0.2.0.0-r0-c51005a82d4ee8a20837ee0f647270f1a573fc558e89d4bcac80a0c3ac07892a.nix;
        revNum = 0;
        sha256 = "c51005a82d4ee8a20837ee0f647270f1a573fc558e89d4bcac80a0c3ac07892a";
      };
      default = "r0";
    };
  };
}