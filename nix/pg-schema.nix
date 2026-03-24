{
  "0.5.0.0" = {
    sha256 = "f8c0ad442ffc7419ec95aefe123e64eebc89490e552ad1c8699e27b1ed670fd1";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-schema-0.5.0.0-r0-8a283a0e726ea423376713db7b236ba6ac174b4f10ee3b111133371d3c20e01a.nix;
        revNum = 0;
        sha256 = "8a283a0e726ea423376713db7b236ba6ac174b4f10ee3b111133371d3c20e01a";
      };
      default = "r0";
    };
  };
  "0.5.1.0" = {
    sha256 = "1d4f89dc3554fb58f7ae204f68a2b1cc57bec9da3217d3921f573fa063589ab1";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-schema-0.5.1.0-r0-5378972018961d286a4d6eb45d05060bcfe832aea96a14b55ccd81c03247c72a.nix;
        revNum = 0;
        sha256 = "5378972018961d286a4d6eb45d05060bcfe832aea96a14b55ccd81c03247c72a";
      };
      default = "r0";
    };
  };
}