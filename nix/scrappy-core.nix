{
  "0.1.0.0" = {
    sha256 = "88d4e405f76cebaef6e19712105a0f9c0bb35d89c1af005cf0565bcc31e0b63d";
    revisions = {
      r0 = {
        nix = import ../hackage/scrappy-core-0.1.0.0-r0-c2f9c8967ce822b4fd66f0c8885996399b69d3feea33e33c8304668050c0e3c0.nix;
        revNum = 0;
        sha256 = "c2f9c8967ce822b4fd66f0c8885996399b69d3feea33e33c8304668050c0e3c0";
      };
      r1 = {
        nix = import ../hackage/scrappy-core-0.1.0.0-r1-db959a0494cdd38e27a6afc48523cc48590259b77a31f61763e21b9ac5bb5bb6.nix;
        revNum = 1;
        sha256 = "db959a0494cdd38e27a6afc48523cc48590259b77a31f61763e21b9ac5bb5bb6";
      };
      r2 = {
        nix = import ../hackage/scrappy-core-0.1.0.0-r2-bfc922c26b84089ea5f5ede9dba11c25bb2e94125d889a64b6c372fc201091e8.nix;
        revNum = 2;
        sha256 = "bfc922c26b84089ea5f5ede9dba11c25bb2e94125d889a64b6c372fc201091e8";
      };
      r3 = {
        nix = import ../hackage/scrappy-core-0.1.0.0-r3-55d9b0fb02b958a3ab943b5f45c2b5c3a318fb9942bffb17813635b1064ae37c.nix;
        revNum = 3;
        sha256 = "55d9b0fb02b958a3ab943b5f45c2b5c3a318fb9942bffb17813635b1064ae37c";
      };
      default = "r3";
    };
  };
}