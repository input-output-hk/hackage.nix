{
  "2.0" = {
    sha256 = "ae4cd098c43f0236b8bb9e3e6d426501aace308ffbc4c7c346868382f30733c8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotfleetwise-2.0-r0-c77f448ed5b224a990dee4be7daa679514015accc6ed14f0ee4201048ae030ac.nix;
        revNum = 0;
        sha256 = "c77f448ed5b224a990dee4be7daa679514015accc6ed14f0ee4201048ae030ac";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotfleetwise-2.0-r1-a72592126a3acd8c54a9b79bd6bccba1f1d3065cb2d6e0ca7b88cc19093a690a.nix;
        revNum = 1;
        sha256 = "a72592126a3acd8c54a9b79bd6bccba1f1d3065cb2d6e0ca7b88cc19093a690a";
      };
      default = "r1";
    };
  };
}