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
      deepseq = true;
      hashable = true;
      serialise = true;
      vector-space = true;
      xmlbf = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-money"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.";
      description = "Type-safe and lossless encoding and manipulation of money, fiat currencies,\ncrypto currencies and precious metals.\n\nNOTICE that the only mandatory dependencies of this package are @base@ and\n@constraints@. The rest of the dependencies are OPTIONAL but enabled by\ndefault (except @store@ which is also disabled when building with GHCJS), they\ncan be disabled with Cabal flags.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optional (flags.cereal) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.serialise) (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))) ++ pkgs.lib.optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (errorHandler.buildDepError "store"))) ++ pkgs.lib.optional (flags.vector-space) (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))) ++ pkgs.lib.optionals (flags.xmlbf) [
          (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = (((((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."safe-money" or (errorHandler.buildDepError "safe-money"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optional (flags.cereal) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.serialise) (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))) ++ pkgs.lib.optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (errorHandler.buildDepError "store"))) ++ pkgs.lib.optional (flags.vector-space) (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))) ++ pkgs.lib.optionals (flags.xmlbf) [
            (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }