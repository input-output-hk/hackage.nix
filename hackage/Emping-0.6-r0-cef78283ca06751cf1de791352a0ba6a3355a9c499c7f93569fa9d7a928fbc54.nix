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
      specVersion = "1.0";
      identifier = { name = "Emping"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "Hans van Thiel 2006 - 2009";
      maintainer = "hthiel.char@zonnet.nl";
      author = "Hans van Thiel";
      homepage = "http://www.muitovar.com";
      url = "";
      synopsis = "derives heuristic rules from nominal data";
      description = "interactive (prototype) tool for discovery and analysis of predictive relations in nominal data\nreads tables in Open Office Calc .csv format, saves results in .csv and .dot (GraphViz)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "emping" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }