{
  "0.1.0.0" = {
    sha256 = "2cdb09e5c959ab1a1bb4eaeb10a0b1786bcd7d3fddbeb90d7626c1e58842296c";
    revisions = {
      r0 = {
        nix = import ../hackage/acid-state-dist-0.1.0.0-r0-9df0c8e4c66972a55f9cbeadc5b29ff13c1afdbf7f982a00dff045be86c77892.nix;
        revNum = 0;
        sha256 = "9df0c8e4c66972a55f9cbeadc5b29ff13c1afdbf7f982a00dff045be86c77892";
        };
      r1 = {
        nix = import ../hackage/acid-state-dist-0.1.0.0-r1-6cfcc716708a50726563f6ca171f883e0c62a3e6d7090a87878fce0fda8f197b.nix;
        revNum = 1;
        sha256 = "6cfcc716708a50726563f6ca171f883e0c62a3e6d7090a87878fce0fda8f197b";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "868d3c28720d6757609ee8247634a04d49884cf0a049b1fca8fe542ddcc69eab";
    revisions = {
      r0 = {
        nix = import ../hackage/acid-state-dist-0.1.0.1-r0-b62eb66c53e388cea95c7df52ef73f9a331ebe78683a3c427e4005f962ca243e.nix;
        revNum = 0;
        sha256 = "b62eb66c53e388cea95c7df52ef73f9a331ebe78683a3c427e4005f962ca243e";
        };
      default = "r0";
      };
    };
  }