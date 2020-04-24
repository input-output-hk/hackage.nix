{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      aeson = true;
      binary = true;
      cereal = true;
      store = true;
      deepseq = true;
      hashable = true;
      serialise = true;
      xmlbf = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-money"; version = "0.4.1"; };
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
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))) ++ (pkgs.lib).optionals (flags.xmlbf) [
          (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = ((((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."safe-money" or ((hsPkgs.pkgs-errors).buildDepError "safe-money"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))) ++ (pkgs.lib).optionals (flags.xmlbf) [
            (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }