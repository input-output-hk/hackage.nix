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
      identifier = { name = "unbeliever"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons. Its @Program@ type provides unified ouptut &\nlogging, command-line option parsing, exception handling, and a place to\nput top-level application state. There's also an underlying @Rope@ text\ntype built on a finger tree of UTF-8 fragments along with conveniences\nfor pretty printing and colourizing terminal output.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nUseful starting points in the documentation are\n<../core-program/docs/Core-Program-Execute.html Core.Program.Execute> and\n<../core-text/docs/Core-Text-Rope.html Core.Text.Rope>.\n\nAn ancillary purpose of this library is to facilitate interoperability\nbetween different package families and ecosystems. Having a single\nbatteries-included package (as was originally the case) made using it\neasier, but the resulting dependency footprint was considerable and\ngrowing. The code is thus now spread across several packages:\n\n* __core-text__\n* __core-data__\n* __core-program__\n\nwith more forthcoming as we continue to add convenince and\ninteroperability wrappers around streaming, webservers, and database\naccess patterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."core-data" or (buildDepError "core-data"))
          (hsPkgs."core-program" or (buildDepError "core-program"))
          (hsPkgs."core-text" or (buildDepError "core-text"))
          ];
        buildable = true;
        };
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
          buildable = true;
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
          buildable = true;
          };
        };
      };
    }