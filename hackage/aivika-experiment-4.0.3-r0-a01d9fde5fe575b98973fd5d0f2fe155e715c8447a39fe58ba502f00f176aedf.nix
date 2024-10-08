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
      identifier = { name = "aivika-experiment"; version = "4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2015. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika-experiment";
      url = "";
      synopsis = "Simulation experiments for the Aivika library";
      description = "This package allows defining simulation experiments for the Aivika\npackage. Such experiments define in declarative manner what should be\nsimulated and in which view the simulation results should be\ngenerated. It can be charts, tables and so on.\n\nThe library is extensible and you can add new views for the results.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
        ];
        buildable = true;
      };
    };
  }