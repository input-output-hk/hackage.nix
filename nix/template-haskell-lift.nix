{
  "0.1.0.0" = {
    sha256 = "fa221e0218503e8fbb447dc0ed405e43f13c5040055084cc0cb6ca6501a7f127";
    revisions = {
      r0 = {
        nix = import ../hackage/template-haskell-lift-0.1.0.0-r0-67d4731ce3ff612dfd3b62a5e6c323640e97ccf5cbd367135813cc2f764794f2.nix;
        revNum = 0;
        sha256 = "67d4731ce3ff612dfd3b62a5e6c323640e97ccf5cbd367135813cc2f764794f2";
      };
      r1 = {
        nix = import ../hackage/template-haskell-lift-0.1.0.0-r1-f6cd3ee45b0c68480c400bfca9f08f39e8e87a5eb823f206dbe06ab1923a4f1c.nix;
        revNum = 1;
        sha256 = "f6cd3ee45b0c68480c400bfca9f08f39e8e87a5eb823f206dbe06ab1923a4f1c";
      };
      default = "r1";
    };
  };
}