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
      specVersion = "2.4";
      identifier = { name = "graph-trace-dot"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2022 Aaron Allen";
      maintainer = "aaronallen8455@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Converts a graph-trace log into a DOT file for use with Graphviz";
      description = "Creates a DOT file from a @graph-trace@ log which is useable with [Graphviz](https://graphviz.org).\n\nSee the [README](https://github.com/aaronallen8455/graph-trace#graph-trace) for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "graph-trace-dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."graph-trace-dot" or (errorHandler.buildDepError "graph-trace-dot"))
            ];
          buildable = true;
          };
        };
      };
    }