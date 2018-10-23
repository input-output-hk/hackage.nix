{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      aeson = true;
      cereal = true;
      store = true;
      hashable = true;
      serialise = true;
      vector-space = true;
      xmlbf = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safe-money";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.";
      description = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.\n\nNOTICE that the only mandatory dependencies of this package are @base@,\n@binary@, @constraints@, @deepseq@ and @text@. Except for\n@constraints@, all of them are included with a standard GHC distribution. The\nrest of the dependencies are OPTIONAL but enabled by default (except @store@\nwhich is disabled when building with GHCJS because it doesn't compile ther).\nAll of the optional dependencies can be disabled with Cabal flags.";
      buildType = "Simple";
    };
    components = {
      "safe-money" = {
        depends  = (((((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.cereal) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.serialise) (hsPkgs.serialise)) ++ pkgs.lib.optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs.store)) ++ pkgs.lib.optional (flags.vector-space) (hsPkgs.vector-space)) ++ pkgs.lib.optional (flags.xmlbf) (hsPkgs.xmlbf);
      };
      tests = {
        "test" = {
          depends  = (((((([
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.safe-money)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.cereal) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.serialise) (hsPkgs.serialise)) ++ pkgs.lib.optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs.store)) ++ pkgs.lib.optional (flags.vector-space) (hsPkgs.vector-space)) ++ pkgs.lib.optional (flags.xmlbf) (hsPkgs.xmlbf);
        };
      };
    };
  }