{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      aeson = true;
      binary = true;
      cereal = true;
      store = true;
      deepseq = true;
      hashable = true;
      serialise = true;
      xmlbf = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safe-money";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2016-2017";
        maintainer = "renλren!zone";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/safe-money";
        url = "";
        synopsis = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.";
        description = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.\n\nNOTICE that the only mandatory dependencies of this package are @base@ and\n@constraints@. The rest of the dependencies are OPTIONAL but enabled by\ndefault (except @store@ which is also disabled when building with GHCJS), they\ncan be disabled with Cabal flags.";
        buildType = "Simple";
      };
      components = {
        "safe-money" = {
          depends  = ((((((([
            hsPkgs.base
            hsPkgs.constraints
          ] ++ pkgs.lib.optional _flags.aeson hsPkgs.aeson) ++ pkgs.lib.optional _flags.binary hsPkgs.binary) ++ pkgs.lib.optional _flags.cereal hsPkgs.cereal) ++ pkgs.lib.optional _flags.deepseq hsPkgs.deepseq) ++ pkgs.lib.optional _flags.hashable hsPkgs.hashable) ++ pkgs.lib.optional _flags.serialise hsPkgs.serialise) ++ pkgs.lib.optional (_flags.store && !(compiler.isGhcjs && true)) hsPkgs.store) ++ pkgs.lib.optionals _flags.xmlbf [
            hsPkgs.xmlbf
            hsPkgs.text
          ];
        };
        tests = {
          "test" = {
            depends  = ((((((([
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.constraints
              hsPkgs.safe-money
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ] ++ pkgs.lib.optional _flags.aeson hsPkgs.aeson) ++ pkgs.lib.optional _flags.binary hsPkgs.binary) ++ pkgs.lib.optional _flags.cereal hsPkgs.cereal) ++ pkgs.lib.optional _flags.deepseq hsPkgs.deepseq) ++ pkgs.lib.optional _flags.hashable hsPkgs.hashable) ++ pkgs.lib.optional _flags.serialise hsPkgs.serialise) ++ pkgs.lib.optional (_flags.store && !(compiler.isGhcjs && true)) hsPkgs.store) ++ pkgs.lib.optionals _flags.xmlbf [
              hsPkgs.xmlbf
              hsPkgs.text
            ];
          };
        };
      };
    }