{
  "2.0" = {
    sha256 = "4573384591e5010603b9b2c997b406b92f68ea3319962ac5634f365ac12e9548";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ivs-2.0-r0-85f4830289d90d6e9b79ebae20973a0ee3b069a92d4e0d6aa9f05c75b43c6abf.nix;
        revNum = 0;
        sha256 = "85f4830289d90d6e9b79ebae20973a0ee3b069a92d4e0d6aa9f05c75b43c6abf";
      };
      r1 = {
        nix = import ../hackage/amazonka-ivs-2.0-r1-dd1170cd22fc8b6488e7996b1754347c8f06f81aca450ab1e0352426a7aae1c4.nix;
        revNum = 1;
        sha256 = "dd1170cd22fc8b6488e7996b1754347c8f06f81aca450ab1e0352426a7aae1c4";
      };
      default = "r1";
    };
  };
}