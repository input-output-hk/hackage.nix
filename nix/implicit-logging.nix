{
  "0.1.0.0" = {
    sha256 = "98032042eee95714c2f0e0c1a25a03f15e75223bacc85b9857b1d66d639805c0";
    revisions = {
      r0 = {
        nix = import ../hackage/implicit-logging-0.1.0.0-r0-9428f27b30125552550130d856069c26122ceaf2c1b39494aff6d4c7aab9ce9a.nix;
        revNum = 0;
        sha256 = "9428f27b30125552550130d856069c26122ceaf2c1b39494aff6d4c7aab9ce9a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "81b1c538b50963067410e7cbb6d60f42c0e90f068518d20505cc942e633ec3e3";
    revisions = {
      r0 = {
        nix = import ../hackage/implicit-logging-0.2.0.0-r0-f313c229ec22692db1750613e690165e7ba98410dc300c892e3a8239618ef2b1.nix;
        revNum = 0;
        sha256 = "f313c229ec22692db1750613e690165e7ba98410dc300c892e3a8239618ef2b1";
      };
      r1 = {
        nix = import ../hackage/implicit-logging-0.2.0.0-r1-da2dc77f11f48a07772f4528408f90fad91d0c413d4bf855f14670df5765a60b.nix;
        revNum = 1;
        sha256 = "da2dc77f11f48a07772f4528408f90fad91d0c413d4bf855f14670df5765a60b";
      };
      default = "r1";
    };
  };
}