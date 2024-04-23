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
      identifier = { name = "graph-trace-viz"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2022 Aaron Allen";
      maintainer = "aaronallen8455@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Converts a graph-trace log into an HTML document";
      description = "Creates an HTML document with an explorable graph which represents\nthe execution of a program. Each unique invocation of a function is\nrepresented as an edge in the graph.\n\nSee the [README](https://github.com/aaronallen8455/graph-trace#graph-trace) for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "graph-trace-viz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."graph-trace-dot" or (errorHandler.buildDepError "graph-trace-dot"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }