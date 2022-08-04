{
  "0.1.0.0" = {
    sha256 = "2c8653d3272e7fa59bfef888771ebafb8e265ba10ee03cdb8b73b5bc3bcf98d7";
    revisions = {
      r0 = {
        nix = import ../hackage/hamilton-0.1.0.0-r0-bedcfaad79af75e8327a2284ba2bb86add50fd06349142ad206d694f7803f9fd.nix;
        revNum = 0;
        sha256 = "bedcfaad79af75e8327a2284ba2bb86add50fd06349142ad206d694f7803f9fd";
        };
      r1 = {
        nix = import ../hackage/hamilton-0.1.0.0-r1-98196f65e90fc9548fc06c917e6e90caf1934ae1b0d33c0c3a3e6c4e6c94fc39.nix;
        revNum = 1;
        sha256 = "98196f65e90fc9548fc06c917e6e90caf1934ae1b0d33c0c3a3e6c4e6c94fc39";
        };
      r2 = {
        nix = import ../hackage/hamilton-0.1.0.0-r2-f0a9099cd8474b2fff95c7f027c10b6a3cc43cce1be1a7bebf6914b4a2c2a49d.nix;
        revNum = 2;
        sha256 = "f0a9099cd8474b2fff95c7f027c10b6a3cc43cce1be1a7bebf6914b4a2c2a49d";
        };
      default = "r2";
      };
    };
  "0.1.0.1" = {
    sha256 = "c36a71a2ff6a70b9ee7a7ff3216a6629f0aa56e80cafe0b68cfe32d8c437978b";
    revisions = {
      r0 = {
        nix = import ../hackage/hamilton-0.1.0.1-r0-e7028f50ea9b92f428943933cf554f4c7a468aaf30c9214fd351c1046044385b.nix;
        revNum = 0;
        sha256 = "e7028f50ea9b92f428943933cf554f4c7a468aaf30c9214fd351c1046044385b";
        };
      default = "r0";
      };
    };
  "0.1.0.2" = {
    sha256 = "15acc8563f60448621cffc58acf880487cc997e682e8cbc79032d5886bdc1cba";
    revisions = {
      r0 = {
        nix = import ../hackage/hamilton-0.1.0.2-r0-1817d17214c772ee085f3275d633d344c53a84c5d42b8a5815dbbe76e96e0b8e.nix;
        revNum = 0;
        sha256 = "1817d17214c772ee085f3275d633d344c53a84c5d42b8a5815dbbe76e96e0b8e";
        };
      default = "r0";
      };
    };
  "0.1.0.3" = {
    sha256 = "3c7623217c8e49cabc6620835e53609e7b7339f39a1523da2467076252addb1b";
    revisions = {
      r0 = {
        nix = import ../hackage/hamilton-0.1.0.3-r0-fc95e1caa612e3f1e22c28878489f9efedada32e87158c709be1463579298921.nix;
        revNum = 0;
        sha256 = "fc95e1caa612e3f1e22c28878489f9efedada32e87158c709be1463579298921";
        };
      default = "r0";
      };
    };
  }