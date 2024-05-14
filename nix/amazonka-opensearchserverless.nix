{
  "2.0" = {
    sha256 = "79bf406e6ad24e35e689c9794f90b2a9a46e4af15093dd2daed4639d626f1ede";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-opensearchserverless-2.0-r0-872a7e5687acab68928a13697b894825e61c09993888e719b1b27ef2d2a88e5c.nix;
        revNum = 0;
        sha256 = "872a7e5687acab68928a13697b894825e61c09993888e719b1b27ef2d2a88e5c";
      };
      r1 = {
        nix = import ../hackage/amazonka-opensearchserverless-2.0-r1-7e10b99be319b0e9205ca26817a71ef330387c8f19012048ea781776d54d6a5c.nix;
        revNum = 1;
        sha256 = "7e10b99be319b0e9205ca26817a71ef330387c8f19012048ea781776d54d6a5c";
      };
      default = "r1";
    };
  };
}