{
  "3.6.0.0" = {
    sha256 = "ca25e5fc601397565fa857f1aa477740fac7f43d659e77c4d9b1485dca239251";
    revisions = {
      r0 = {
        nix = import ../hackage/Cabal-syntax-3.6.0.0-r0-037d70bb091c49f68726dde920f6a003b646835a86cdcb5b5ad58ad9af3207d9.nix;
        revNum = 0;
        sha256 = "037d70bb091c49f68726dde920f6a003b646835a86cdcb5b5ad58ad9af3207d9";
        };
      default = "r0";
      };
    };
  "3.8.1.0" = {
    sha256 = "07e8ddb19fe01781485f1522b6afc22aba680b0ab28ebe6bbfb84a2dd698ce0f";
    revisions = {
      r0 = {
        nix = import ../hackage/Cabal-syntax-3.8.1.0-r0-916bfd6214fb25a0f60e93db506dfe1a2ec967800e1e21966f8ef634ef01e334.nix;
        revNum = 0;
        sha256 = "916bfd6214fb25a0f60e93db506dfe1a2ec967800e1e21966f8ef634ef01e334";
        };
      r1 = {
        nix = import ../hackage/Cabal-syntax-3.8.1.0-r1-4936765e9a7a8ecbf8fdbe9067f6d972bc0299220063abb2632a9950af64b966.nix;
        revNum = 1;
        sha256 = "4936765e9a7a8ecbf8fdbe9067f6d972bc0299220063abb2632a9950af64b966";
        };
      default = "r1";
      };
    };
  }