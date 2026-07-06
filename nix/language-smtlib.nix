{
  "0.1.0.0" = {
    sha256 = "c15ebee8c1dbdcff0baab1ed3cda1ff1b63b66738592520915fe2d8410ee9e03";
    revisions = {
      r0 = {
        nix = import ../hackage/language-smtlib-0.1.0.0-r0-ed9833fd336801464fe45c7f6658030e116b6d62113da648734711f825e064a3.nix;
        revNum = 0;
        sha256 = "ed9833fd336801464fe45c7f6658030e116b6d62113da648734711f825e064a3";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8480c8248b3ad066d833359f5ec17e6cc85361ba5c9d9f1aba67c6a8526e3372";
    revisions = {
      r0 = {
        nix = import ../hackage/language-smtlib-0.2.0.0-r0-c46bf3f2e49f544548b66da06aa0c352e5194fefd279e45de1217d460b6e7b49.nix;
        revNum = 0;
        sha256 = "c46bf3f2e49f544548b66da06aa0c352e5194fefd279e45de1217d460b6e7b49";
      };
      default = "r0";
    };
  };
}