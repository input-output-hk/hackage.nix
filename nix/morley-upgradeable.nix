{
  "0.3" = {
    sha256 = "8c2105f8814476653237b5cca6621b0c2d1c7bc8ccd96dd7d80d59838c3283e6";
    revisions = {
      r0 = {
        nix = import ../hackage/morley-upgradeable-0.3-r0-c2bc917996c5a297b8e8b6045d91fb884052262d46b8b9c24f9fecf017ff994d.nix;
        revNum = 0;
        sha256 = "c2bc917996c5a297b8e8b6045d91fb884052262d46b8b9c24f9fecf017ff994d";
      };
      r1 = {
        nix = import ../hackage/morley-upgradeable-0.3-r1-fd8dc503876a86938317fd69e201c5a961e1b0d7a91beb6791fb642c1225d5c2.nix;
        revNum = 1;
        sha256 = "fd8dc503876a86938317fd69e201c5a961e1b0d7a91beb6791fb642c1225d5c2";
      };
      default = "r1";
    };
  };
}