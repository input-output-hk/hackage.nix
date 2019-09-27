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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or (buildDepError "vector-space"))) ++ (pkgs.lib).optional (flags.xmlbf) (hsPkgs."xmlbf" or (buildDepError "xmlbf"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = (((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."safe-money" or (buildDepError "safe-money"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or (buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"))) ++ (pkgs.lib).optional (flags.store && !(compiler.isGhcjs && true)) (hsPkgs."store" or (buildDepError "store"))) ++ (pkgs.lib).optional (flags.vector-space) (hsPkgs."vector-space" or (buildDepError "vector-space"))) ++ (pkgs.lib).optional (flags.xmlbf) (hsPkgs."xmlbf" or (buildDepError "xmlbf"));
          buildable = true;
          };
        };
      };
    }