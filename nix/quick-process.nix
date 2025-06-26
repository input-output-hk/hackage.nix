{
  "0.0.1" = {
    sha256 = "1a8dab0bb78ed64bc0390c78ca5b8d32adaabb090758af652f63518cf830fbb5";
    revisions = {
      r0 = {
        nix = import ../hackage/quick-process-0.0.1-r0-c15383668def3fd57217f07ccc99d4a95534074265367bfe3f45284ff986f131.nix;
        revNum = 0;
        sha256 = "c15383668def3fd57217f07ccc99d4a95534074265367bfe3f45284ff986f131";
      };
      default = "r0";
    };
  };
  "0.0.3" = {
    sha256 = "f1d9dac39d3c83dcf2d66d300783a1fb74484698f5b777b8250276f1f4ef1fa0";
    revisions = {
      r0 = {
        nix = import ../hackage/quick-process-0.0.3-r0-fe2984a46fe64b7d014ee65deb0a8db4cf6e02f909af0612f67cfc587ea882a1.nix;
        revNum = 0;
        sha256 = "fe2984a46fe64b7d014ee65deb0a8db4cf6e02f909af0612f67cfc587ea882a1";
      };
      default = "r0";
    };
  };
}