{
  "0.1.0.0" = {
    sha256 = "ded4ff578d96a6344d709b92dcfe398d7b5b3da54e0c3b35d8c3ab110b4f518d";
    revisions = {
      r0 = {
        nix = import ../hackage/FailT-0.1.0.0-r0-ab7dc6365bd251e2f09f35eff4df7f66c5e3839403ba6f845b7219640019958c.nix;
        revNum = 0;
        sha256 = "ab7dc6365bd251e2f09f35eff4df7f66c5e3839403ba6f845b7219640019958c";
        };
      r1 = {
        nix = import ../hackage/FailT-0.1.0.0-r1-19deab7f0f288fbf985cad2b11b42ac84436376aed210f53d3e24994d95e45b3.nix;
        revNum = 1;
        sha256 = "19deab7f0f288fbf985cad2b11b42ac84436376aed210f53d3e24994d95e45b3";
        };
      r2 = {
        nix = import ../hackage/FailT-0.1.0.0-r2-2121ade7f088471431e252917cd537a5a0abf355b891c3538baa79ba581c7cb3.nix;
        revNum = 2;
        sha256 = "2121ade7f088471431e252917cd537a5a0abf355b891c3538baa79ba581c7cb3";
        };
      default = "r2";
      };
    };
  }