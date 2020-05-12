{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
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
      identifier = { name = "safe-money"; version = "0.3"; };
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
        depends = ((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (errorHandler.buildDepError "store"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."safe-money" or (errorHandler.buildDepError "safe-money"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (flags.store || !(compiler.isGhcjs && true)) (hsPkgs."store" or (errorHandler.buildDepError "store"));
          buildable = true;
          };
        };
      };
    }