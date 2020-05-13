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
      specVersion = "1.10";
      identifier = { name = "amby"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/jsermeno/amby#readme";
      url = "";
      synopsis = "Statistical data visualization";
      description = "Statistical data visualization. Provides a high-level\ninterface built on top of\n<https://github.com/timbod7/haskell-chart/wiki Chart>\nto quickly display attractive visualizations within GHCi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "amby-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."amby" or (errorHandler.buildDepError "amby"))
            ];
          buildable = true;
          };
        };
      tests = {
        "amby-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."amby" or (errorHandler.buildDepError "amby"))
            ];
          buildable = true;
          };
        };
      };
    }