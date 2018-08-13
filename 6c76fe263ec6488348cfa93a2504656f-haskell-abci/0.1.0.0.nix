{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-abci";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Christopher Goes";
      maintainer = "cwgoes@protonmail.ch";
      author = "Christopher Goes";
      homepage = "https://github.com/cwgoes/haskell-abci#readme";
      url = "";
      synopsis = "Haskell Application BlockChain Interface (ABCI) Server Library";
      description = "Haskell library for writing Application BlockChain Interface (ABCI) servers. Licensed under BSD 3-clause (see LICENSE).";
      buildType = "Custom";
    };
    components = {
      "haskell-abci" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.foundation)
          (hsPkgs.bytestring)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-arbitrary)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.lens)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit-combinators)
          (hsPkgs.network-conduit)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "haskell-abci-counter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foundation)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.haskell-abci)
          ];
        };
      };
    };
  }