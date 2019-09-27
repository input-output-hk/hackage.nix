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
      identifier = { name = "fit"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Matt Giles";
      maintainer = "matt.w.giles@gmail.com";
      author = "Matt Giles";
      homepage = "";
      url = "";
      synopsis = "FIT file decoder";
      description = "The FIT protocol is used by many sport and fitness devices made by companies\nlike Garmin, for example running watches and bike computers. `fit` provides an\nAPI for parsing these files for analysis or conversion.\n\nCurrently this package is a pretty low-level effort, and you'll need to be familiar\nwith FIT to get much value from it. Specifically, the notion of the FIT \\\"profile\\\" is\nignored entirely, so to make use of the decoded file you'll need to reference the\n\\\"Profile.xls\\\" spreadsheet in the <http://www.thisisant.com/resources/fit FIT SDK>.\n\nThe \"Fit\" module exports a convenient set of data types for examining FIT files, as\nwell as some lenses for extracting specific data. It's intended that the API in the\n\"Fit\" module should be sufficient and convenient for most uses, but if you need access\nto the exact structure of the file you can use the data types in \"Fit.Internal.FitFile\"\nand parsers in \"Fit.Internal.Parse\".\n\nFeel free to contact me if you have any questions, suggestions, or requests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "test-fit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fit" or (buildDepError "fit"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (buildDepError "hspec-attoparsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }