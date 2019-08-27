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
    flags = { llvm-fast = false; library = false; gold = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "2.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/madlang#readme";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."composition" or (buildDepError "composition"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "madlang" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."madlang" or (buildDepError "madlang"))
            ];
          };
        };
      tests = {
        "madlang-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."madlang" or (buildDepError "madlang"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            ];
          };
        };
      benchmarks = {
        "madlang-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."madlang" or (buildDepError "madlang"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }