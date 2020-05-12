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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Plot-ho-matic"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2014, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for protobuf-like data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-gtk" or (errorHandler.buildDepError "Chart-gtk"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Plot-ho-matic" or (errorHandler.buildDepError "Plot-ho-matic"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }