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
      identifier = { name = "Plot-ho-matic"; version = "0.9.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2015, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Real-time line plotter for generic data";
      description = "Plot-ho-matic provides real-time plotting of time-series data with a simple interface ('addHistoryChannel').\nThere is also a more general interface to plot arbitrary data ('addChannel').\n\nSee the example on <http://www.github.com/ghorn/Plot-ho-matic> to help get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."generic-accessors" or (errorHandler.buildDepError "generic-accessors"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "plot-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Plot-ho-matic" or (errorHandler.buildDepError "Plot-ho-matic"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if flags.examples then true else false;
          };
        "set-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Plot-ho-matic" or (errorHandler.buildDepError "Plot-ho-matic"))
            (hsPkgs."generic-accessors" or (errorHandler.buildDepError "generic-accessors"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }