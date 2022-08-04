{
  "0.0.0" = {
    sha256 = "1925b7caf1f90bb53d128fe80c40f637e540648cf45c3ac547968d013bdfd792";
    revisions = {
      r0 = {
        nix = import ../hackage/hit-on-0.0.0-r0-5a25063b5a6507e0357fd37bdc95a89835ca55c1a8f24741d3466b9293b9cb75.nix;
        revNum = 0;
        sha256 = "5a25063b5a6507e0357fd37bdc95a89835ca55c1a8f24741d3466b9293b9cb75";
        };
      r1 = {
        nix = import ../hackage/hit-on-0.0.0-r1-dfa12d0a217d723412880118778bd9b913b25bed9df6ab55fcf829f11da89bbb.nix;
        revNum = 1;
        sha256 = "dfa12d0a217d723412880118778bd9b913b25bed9df6ab55fcf829f11da89bbb";
        };
      default = "r1";
      };
    };
  "0.1.0.0" = {
    sha256 = "2547839e98566795882fb807a85ba19662c43898eb14ba46b1a5398f7bb2fd8e";
    revisions = {
      r0 = {
        nix = import ../hackage/hit-on-0.1.0.0-r0-3e4ece33dd6dcc4756e3da29bcf6498c580335b3c3c324479c16c4e2748a0409.nix;
        revNum = 0;
        sha256 = "3e4ece33dd6dcc4756e3da29bcf6498c580335b3c3c324479c16c4e2748a0409";
        };
      default = "r0";
      };
    };
  }