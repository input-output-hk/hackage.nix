{
  "0.1.0" = {
    sha256 = "3fa54b401de1e61be9b41c1afa94cc8484b29bc3eafb6810f59d69b4e7a7eaa5";
    revisions = {
      r0 = {
        nix = import ../hackage/abeson-0.1.0-r0-7d1b3d8497ffb1b558c64a5046d4ae7800592d9a3a8803733071cda8b45f5f86.nix;
        revNum = 0;
        sha256 = "7d1b3d8497ffb1b558c64a5046d4ae7800592d9a3a8803733071cda8b45f5f86";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "2c781d0a5f17d546dbd6dc2bb337bc3c27233780aa474b9a8668ea33dd4345bc";
    revisions = {
      r0 = {
        nix = import ../hackage/abeson-0.1.0.1-r0-9db98e0c9076d25943a35fee3b7585aa153271124fe538abc2d48da3300bf6ae.nix;
        revNum = 0;
        sha256 = "9db98e0c9076d25943a35fee3b7585aa153271124fe538abc2d48da3300bf6ae";
        };
      r1 = {
        nix = import ../hackage/abeson-0.1.0.1-r1-fc1839c19327f8fb9b36d2aa6dd133e3d391696183b3292894f9f7e1ca188727.nix;
        revNum = 1;
        sha256 = "fc1839c19327f8fb9b36d2aa6dd133e3d391696183b3292894f9f7e1ca188727";
        };
      default = "r1";
      };
    };
  }