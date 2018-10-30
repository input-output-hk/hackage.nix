{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      aeson = true;
      binary = true;
      cereal = true;
      store = true;
      hashable = true;
      deepseq = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safe-money";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2017";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.";
      description = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.\n\nNotice that the only mandatory dependencies of this package are @base@ and\n@constraints@. The rest of the dependencies are optional but enabled by\ndefault (except @store@ which is also disabled when building with GHCJS), they\ncan be disabled with Cabal flags.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ((((([
          (hsPkgs.base)
          (hsPkgs.constraints)
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.binary) (hsPkgs.binary)) ++ pkgs.lib.optional (flags.cereal) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs.store);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.safe-money)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ] ++ pkgs.lib.optional (flags.store || !(compiler.isGhcjs && true)) (hsPkgs.store);
        };
      };
    };
  }