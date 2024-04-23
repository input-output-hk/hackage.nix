{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nAn ancillary aim of this library is to facilitate interoperability. A\nsingle batteries-included package would make this easier, but the resulting\ndependency footprint would be considerable. The code is thus spread across\nseveral packages:\n\n* __core-text__\n* __core-data__\n* __core-program__\n\nUseful starting points in the documentation are <../core-program/docs/Core-Program-Execute.html Core.Program.Execute>\nand <../core-text/docs/Core-Text-Rope.html Core.Text.Rope>.";
      buildType = "Simple";
    };
    components = {
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "performance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }