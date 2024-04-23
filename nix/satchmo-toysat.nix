{
  "0.2.0.0" = {
    sha256 = "c23e8c1f3898ad52604b72f16d5c32f6b57fbdddba0ca9cb252c3ee4a872f982";
    revisions = {
      r0 = {
        nix = import ../hackage/satchmo-toysat-0.2.0.0-r0-9c9a1a95654f3320dcf1bdd02c01c409e085a76ddac74fcd3313fa572ab95c0b.nix;
        revNum = 0;
        sha256 = "9c9a1a95654f3320dcf1bdd02c01c409e085a76ddac74fcd3313fa572ab95c0b";
      };
      r1 = {
        nix = import ../hackage/satchmo-toysat-0.2.0.0-r1-8223ea3fed44a7a76ccba5c110d9d44913e70c12698c3f252ae3b03677e8d067.nix;
        revNum = 1;
        sha256 = "8223ea3fed44a7a76ccba5c110d9d44913e70c12698c3f252ae3b03677e8d067";
      };
      default = "r1";
    };
  };
  "0.2.1.0" = {
    sha256 = "c1c0ee4e46975dfc874b43c3145110956bb1a920b123910e9afcb318dbfbd0bc";
    revisions = {
      r0 = {
        nix = import ../hackage/satchmo-toysat-0.2.1.0-r0-516fbe12c5f1bc73f5792c2f5843b410c36d4d80db9153a7a3671a52d151ca68.nix;
        revNum = 0;
        sha256 = "516fbe12c5f1bc73f5792c2f5843b410c36d4d80db9153a7a3671a52d151ca68";
      };
      r1 = {
        nix = import ../hackage/satchmo-toysat-0.2.1.0-r1-c7d42104f5373844f95b97b8e4ed7482712f1ca054ca669a17ccfffaee8acab3.nix;
        revNum = 1;
        sha256 = "c7d42104f5373844f95b97b8e4ed7482712f1ca054ca669a17ccfffaee8acab3";
      };
      r2 = {
        nix = import ../hackage/satchmo-toysat-0.2.1.0-r2-ae5666a481311220846873fdb7986bb3208132de89beb3427af15b424f6c33e1.nix;
        revNum = 2;
        sha256 = "ae5666a481311220846873fdb7986bb3208132de89beb3427af15b424f6c33e1";
      };
      default = "r2";
    };
  };
}