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
      specVersion = "1.8.0.2";
      identifier = { name = "ideas-statistics"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2020";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Sietske Tacoma, Noeri Huisman";
      homepage = "http://ideas.cs.uu.nl/";
      url = "";
      synopsis = "Interactive domain reasoner for statistics";
      description = "Interactive domain reasoner for statistics, based on the feedback services\nof the Ideas framework. Provides feedback and hints on step-by-step construction\nof hypothesis tests by students. Test types supported include z-tests, t-tests\nfor one group, dependent groups and independent groups, correlation, ANOVA and\nChi-square tests. The domain reasoner is used by the learning environment Numworx\n(www.numworx.nl) and is available for implementation in other learning\nenvironments as well.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "statistics.cgi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ideas" or (buildDepError "ideas"))
            (hsPkgs."ideas-math-types" or (buildDepError "ideas-math-types"))
            ];
          buildable = true;
          };
        };
      };
    }