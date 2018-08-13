{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      aeson = true;
      binary = true;
      cereal = true;
      store = true;
      hashable = true;
      deepseq = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safe-money";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, world currencies and precious metals.";
      description = "Type-safe and lossless encoding and manipulation of money, world currencies and precious metals.";
      buildType = "Simple";
    };
    components = {
      "safe-money" = {
        depends  = ((((([
          (hsPkgs.base)
          (hsPkgs.constraints)
        ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.binary) (hsPkgs.binary)) ++ pkgs.lib.optional (_flags.cereal) (hsPkgs.cereal)) ++ pkgs.lib.optional (_flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (_flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (_flags.store) (hsPkgs.store);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.store)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }