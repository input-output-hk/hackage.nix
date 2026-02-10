{
  "0.1.0.0" = {
    sha256 = "144b683c761c9d1792a9322f579c082969e91880dc89a6da1d0cf5661f211d60";
    revisions = {
      r0 = {
        nix = import ../hackage/gbnet-hs-0.1.0.0-r0-bcdfe08901912335dbcc8beaf97fb61096ed2766eb1e90484f0fe6c4559b2ed9.nix;
        revNum = 0;
        sha256 = "bcdfe08901912335dbcc8beaf97fb61096ed2766eb1e90484f0fe6c4559b2ed9";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "e08a03ad6c8624ffe92e1cd5a09ab3bed160428681af03921bb687f5fecc752a";
    revisions = {
      r0 = {
        nix = import ../hackage/gbnet-hs-0.1.1.0-r0-d2d1d72aa572a23358ac406debdd09f7420db50e1c917be36631cbfc907f7b8c.nix;
        revNum = 0;
        sha256 = "d2d1d72aa572a23358ac406debdd09f7420db50e1c917be36631cbfc907f7b8c";
      };
      default = "r0";
    };
  };
}