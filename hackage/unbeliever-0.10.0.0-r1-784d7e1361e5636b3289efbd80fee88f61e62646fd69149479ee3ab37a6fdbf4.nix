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
      identifier = { name = "unbeliever"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nAn ancillary aim of this library is to facilitate interoperability. A\nsingle batteries-included package would make this easier, but the resulting\ndependency footprint would be considerable. The code is thus spread across\nseveral packages:\n\n* __core-text__\n* __core-data__\n* __core-program__\n\nUseful starting points in the documentation are <../core-program/docs/Core-Program-Execute.html Core.Program.Execute\">\nand <https://hackage.haskell.org/package/core-text/docs/Core-Text-Rope.html Core.Text.Rope>.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."core-data" or (buildDepError "core-data"))
            (hsPkgs."core-program" or (buildDepError "core-program"))
            (hsPkgs."core-text" or (buildDepError "core-text"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-short" or (buildDepError "text-short"))
            ];
          };
        };
      benchmarks = {
        "performance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."core-data" or (buildDepError "core-data"))
            (hsPkgs."core-program" or (buildDepError "core-program"))
            (hsPkgs."core-text" or (buildDepError "core-text"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }