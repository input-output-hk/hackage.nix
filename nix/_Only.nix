{
  "0.1" = {
    sha256 = "ab7aa193e8c257d3bda6b0b3c1cbcf74cdaa85ab08cb20c2dd62ba248c1ab265";
    revisions = {
      r0 = {
        nix = import ../hackage/Only-0.1-r0-16c0b86c66fc6c44b7309c44a2074ff68598ad685f448decd9fb1cd2147885a7.nix;
        revNum = 0;
        sha256 = "16c0b86c66fc6c44b7309c44a2074ff68598ad685f448decd9fb1cd2147885a7";
        };
      r1 = {
        nix = import ../hackage/Only-0.1-r1-f92f5da97e647451f1ee7f5bf44914fb75062d08ccd3f36b2000d649c63d13aa.nix;
        revNum = 1;
        sha256 = "f92f5da97e647451f1ee7f5bf44914fb75062d08ccd3f36b2000d649c63d13aa";
        };
      default = "r1";
      };
    };
  }