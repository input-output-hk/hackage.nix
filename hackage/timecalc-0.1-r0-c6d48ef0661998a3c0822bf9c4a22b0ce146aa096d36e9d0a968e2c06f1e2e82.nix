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
      specVersion = "1.6";
      identifier = { name = "timecalc"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "chris+hackage@eidhof.nl";
      author = "Chris Eidhof";
      homepage = "https://github.com/chriseidhof/TimeCalc";
      url = "";
      synopsis = "";
      description = "TimeCalc is a very simple utility for calculating times. I use it for calculating splits or predicting race times. It is a calculator that supports doubles and times. For example:\n\nIf I run 5 kilometers at 3:30/kilometer, the race will take me 17:30.\n\n> 5*3:30\n17:30\n\nIf I want to know how fast my splits need to be in order to run a 10K in 37:00.\n\n> 37:00/10\n3:42\n\nIf I want to add two times:\n\n> 3:42 + 3:30 + 3:49\n11:01\n\nOr calculating the splits Bekele needs to run on the marathon:\n\n> 2:02:13 / 42.195\n2:54\n\nWhich is very fast, indeed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "timecalc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
            ];
          };
        };
      };
    }