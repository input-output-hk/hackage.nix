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
      specVersion = "1.6";
      identifier = { name = "edentv"; version = "4.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2005-2012  Phillips Universitaet Marburg";
      maintainer = "Eden group <eden@mathematik.uni-marburg.de>";
      author = "Jost Berthold, Mischa Dieterle, Thomas Horstmeyer, Bernhard Pickenbrock, Tobias Sauerwein, Bjoern Struckmeier";
      homepage = "http://www.mathematik.uni-marburg.de/~eden";
      url = "";
      synopsis = "A Tool to Visualize Parallel Functional Program Executions";
      description = "The Eden Trace Viewer is a tool designed to help\nprogrammers optimize Eden programs by visualising traces\n(eventlog files) of Eden program runs. It is similar to\n(and precedes) threadscope. However, it has been designed\nto visualize not just threads, but also different\nmachines, processes, and messages between processes.\nEdenTV can show you what has happened during the\nexecution of your program. This is very helpful to\noptimize parallel programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "edentv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."ghc-events-parallel" or (errorHandler.buildDepError "ghc-events-parallel"))
            ];
          buildable = true;
          };
        };
      };
    }