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
      identifier = { name = "unbeliever"; version = "0.10.0.5"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2020 Operational Dynamics Consulting Pty Ltd, and Others";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
          (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
          (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
          ];
        buildable = true;
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronologique" or (errorHandler.buildDepError "chronologique"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
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