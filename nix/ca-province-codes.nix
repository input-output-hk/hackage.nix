{
  "1.0.0.0" = {
    sha256 = "03e3427723546165237d5e27d1e24803ca6b7a5fd88a4e2a752bed812cae15d2";
    revisions = {
      r0 = {
        nix = import ../hackage/ca-province-codes-1.0.0.0-r0-52b52bfd3f43ce83dfd18276751c33f86b991922172226c04a194a3cf7eb4d0d.nix;
        revNum = 0;
        sha256 = "52b52bfd3f43ce83dfd18276751c33f86b991922172226c04a194a3cf7eb4d0d";
        };
      r1 = {
        nix = import ../hackage/ca-province-codes-1.0.0.0-r1-f484ddf8582d3417644042a339a3e8c99743b85dd5ba867430c7f4b510ff0214.nix;
        revNum = 1;
        sha256 = "f484ddf8582d3417644042a339a3e8c99743b85dd5ba867430c7f4b510ff0214";
        };
      default = "r1";
      };
    };
  }