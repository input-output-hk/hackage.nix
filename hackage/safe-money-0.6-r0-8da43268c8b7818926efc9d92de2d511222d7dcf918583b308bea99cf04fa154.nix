{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "safe-money"; version = "0.6"; };
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
      "library" = {
        depends = (((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))) ++ (pkgs.lib).optional (flags.xmlbf) (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = (((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."safe-money" or ((hsPkgs.pkgs-errors).buildDepError "safe-money"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))) ++ (pkgs.lib).optional (flags.xmlbf) (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"));
          buildable = true;
          };
        };
      };
    }