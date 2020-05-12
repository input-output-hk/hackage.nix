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
      specVersion = "1.8";
      identifier = { name = "dapi"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://massysett.github.com/dapi";
      url = "";
      synopsis = "Prints a series of dates";
      description = "dapi prints a series of dates to the console. You can filter the\ndates based on multiple criteria, such as day of the week, day,\nmonth, and more. Slightly more information is at the homepage link\ngiven below.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dapi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            ];
          buildable = true;
          };
        };
      };
    }