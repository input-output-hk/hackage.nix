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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "typerbole"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Fionan Haralddottir";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Fionan Haralddottir";
      homepage = "";
      url = "";
      synopsis = "A typeystems library with exaggerated claims";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."generic-random" or (buildDepError "generic-random"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."safe" or (buildDepError "safe"))
          ];
        };
      exes = {
        "typerbole-diagrams" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
            (hsPkgs."colour" or (buildDepError "colour"))
            ];
          };
        };
      tests = {
        "typerbole-testing" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."typerbole" or (buildDepError "typerbole"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ];
          };
        };
      };
    }