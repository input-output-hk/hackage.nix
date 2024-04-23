{
  "1.0" = {
    sha256 = "589d40ccf14c097db21634f1ba405cb4e7d406bf2574a63b50b626589c533540";
    revisions = {
      r0 = {
        nix = import ../hackage/sat-1.0-r0-9c5b42260fb6185a5f2a98c9b4f0e46ddaa119d5d9a921209459d99153b11035.nix;
        revNum = 0;
        sha256 = "9c5b42260fb6185a5f2a98c9b4f0e46ddaa119d5d9a921209459d99153b11035";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "f5f47d290dd5b75311407a8c23d96db871571bda535a40af0386591e22a35daf";
    revisions = {
      r0 = {
        nix = import ../hackage/sat-1.1-r0-1feba03859acc8708ae4134d66c082b343f6084fd58fca3f95b840b08caa6f52.nix;
        revNum = 0;
        sha256 = "1feba03859acc8708ae4134d66c082b343f6084fd58fca3f95b840b08caa6f52";
      };
      default = "r0";
    };
  };
  "1.1.1" = {
    sha256 = "d74427a71ce32a774297984fe4dd021da10180f708114b74cafefe6eb15642c5";
    revisions = {
      r0 = {
        nix = import ../hackage/sat-1.1.1-r0-50288b575c3bec1f9e203bc2a32c330b53633a8d0ad42b464689926b85a764f0.nix;
        revNum = 0;
        sha256 = "50288b575c3bec1f9e203bc2a32c330b53633a8d0ad42b464689926b85a764f0";
      };
      default = "r0";
    };
  };
}