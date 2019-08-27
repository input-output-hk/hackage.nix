let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or (buildDepError "vector-space"))) ++ (pkgs.lib).optionals (flags.xmlbf) [
          (hsPkgs."xmlbf" or (buildDepError "xmlbf"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "test" = {
          depends = (((((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."safe-money" or (buildDepError "safe-money"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (buildDepError "binary"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or (buildDepError "vector-space"))) ++ (pkgs.lib).optionals (flags.xmlbf) [
            (hsPkgs."xmlbf" or (buildDepError "xmlbf"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }