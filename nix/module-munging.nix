{
  "0.1.0.0" = {
    sha256 = "c5b33a02536305a109386c2cad7e688022ec6a7fa49694bb54902e27e9fc8d2d";
    revisions = {
      r0 = {
        nix = import ../hackage/module-munging-0.1.0.0-r0-13aa7bb00814a4ea78ab936145cf246e692e08bc007233d8735a5f56d8a5bc5d.nix;
        revNum = 0;
        sha256 = "13aa7bb00814a4ea78ab936145cf246e692e08bc007233d8735a5f56d8a5bc5d";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "166ee72660883af33e6c0e5e78870cbc8d05f62ac9d7d978e86b7e5ec04117cd";
    revisions = {
      r0 = {
        nix = import ../hackage/module-munging-0.1.0.1-r0-02f8d17864f47b99b70aab6c2ddd48285f374f01a9c7e48497451f3de36214fa.nix;
        revNum = 0;
        sha256 = "02f8d17864f47b99b70aab6c2ddd48285f374f01a9c7e48497451f3de36214fa";
      };
      r1 = {
        nix = import ../hackage/module-munging-0.1.0.1-r1-2906a40acad60ba1735e2e058f8d7e1d44540976a9b1427635af47d01c7eeeb1.nix;
        revNum = 1;
        sha256 = "2906a40acad60ba1735e2e058f8d7e1d44540976a9b1427635af47d01c7eeeb1";
      };
      default = "r1";
    };
  };
}