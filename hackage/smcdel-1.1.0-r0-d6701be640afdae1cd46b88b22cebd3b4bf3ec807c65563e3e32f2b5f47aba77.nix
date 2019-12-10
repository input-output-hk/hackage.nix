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
      specVersion = "1.12";
      identifier = { name = "smcdel"; version = "1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Malvin Gattinger <malvin@w4eg.eu>";
      author = "";
      homepage = "https://github.com/jrclogic/SMCDEL#readme";
      url = "";
      synopsis = "Symbolic Model Checking for Dynamic Epistemic Logic";
      description = "See README.md and SMCDEL.pdf for references and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HasCacBDD" or (buildDepError "HasCacBDD"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cudd" or (buildDepError "cudd"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "smcdel" = {
          depends = [
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            ];
          buildable = true;
          };
        "smcdel-web" = {
          depends = [
            (hsPkgs."HasCacBDD" or (buildDepError "HasCacBDD"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."js-jquery" or (buildDepError "js-jquery"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            ];
          buildable = true;
          };
        "k" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            ];
          buildable = true;
          };
        "translations" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-diningcrypto" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        "bench-muddychildren" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            ];
          buildable = true;
          };
        "bench-sumandproduct" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."smcdel" or (buildDepError "smcdel"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }