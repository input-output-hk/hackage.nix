{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."safe-money" or ((hsPkgs.pkgs-errors).buildDepError "safe-money"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (flags.store || !(compiler.isGhcjs && true)) (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"));
          buildable = true;
          };
        };
      };
    }