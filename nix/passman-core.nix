{
  "0.1.0.0" = {
    sha256 = "aa21320b60b89da6f4bc9d5be70f81100722e8eb01dfa6aa580475d1ceaf2785";
    revisions = {
      r0 = {
        nix = import ../hackage/passman-core-0.1.0.0-r0-ae06cedcb6765b834c4c8257255d06912fb84aa9c88eedd289dc64760ccd37ca.nix;
        revNum = 0;
        sha256 = "ae06cedcb6765b834c4c8257255d06912fb84aa9c88eedd289dc64760ccd37ca";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a73ee6fcff29666037a49e04746790f4b46fd5fcaa497c005bbd4990911d840e";
    revisions = {
      r0 = {
        nix = import ../hackage/passman-core-0.2.0.0-r0-4d631c42b02e0f3c531419abac65619f55f0015d79c6b782554e1e1356ac511e.nix;
        revNum = 0;
        sha256 = "4d631c42b02e0f3c531419abac65619f55f0015d79c6b782554e1e1356ac511e";
      };
      r1 = {
        nix = import ../hackage/passman-core-0.2.0.0-r1-bde02ee5685ce143f3861fe22c1ed3ed82a41c6a6205191f95a9fac8538580a0.nix;
        revNum = 1;
        sha256 = "bde02ee5685ce143f3861fe22c1ed3ed82a41c6a6205191f95a9fac8538580a0";
      };
      r2 = {
        nix = import ../hackage/passman-core-0.2.0.0-r2-0d0cc154453f3bd98e9617837e13566df601ad714393b6f9c27344d898abcb23.nix;
        revNum = 2;
        sha256 = "0d0cc154453f3bd98e9617837e13566df601ad714393b6f9c27344d898abcb23";
      };
      default = "r2";
    };
  };
  "0.2.0.1" = {
    sha256 = "7af9afc4bbf0caf1b5f1a0d17b8daf1f7d2ef1080cc6221e542252f8144745c8";
    revisions = {
      r0 = {
        nix = import ../hackage/passman-core-0.2.0.1-r0-826ef2edfb3d80a19a0a4eabd43120677ffdd356e9de82f96e92c494bbb0292d.nix;
        revNum = 0;
        sha256 = "826ef2edfb3d80a19a0a4eabd43120677ffdd356e9de82f96e92c494bbb0292d";
      };
      default = "r0";
    };
  };
}