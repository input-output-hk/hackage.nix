{
  "0.1.0.0" = {
    sha256 = "fbdfaf412fc76ce6174b66c90739f431852a8ba23218057a881ac527e1d5a083";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-frames-0.1.0.0-r0-e9caf3841bada1aa0f740c118f64103f1d407eb8931909f1a3c247feab0a6b4f.nix;
        revNum = 0;
        sha256 = "e9caf3841bada1aa0f740c118f64103f1d407eb8931909f1a3c247feab0a6b4f";
      };
      r1 = {
        nix = import ../hackage/javelin-frames-0.1.0.0-r1-8f54860ee5837a6f762811be0584e8315a3c2df084a1b0bf1281557d5f4f5ae9.nix;
        revNum = 1;
        sha256 = "8f54860ee5837a6f762811be0584e8315a3c2df084a1b0bf1281557d5f4f5ae9";
      };
      default = "r1";
    };
  };
}