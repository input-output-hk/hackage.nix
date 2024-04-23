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
      identifier = { name = "basic-lens"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Edward Kmett, Nikita Volkov, Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Basic lens type and functions";
      description = "Necessary type and functions for basic lens work.\n\nHandy to depend on for libraries and general\nlight-weight use, including PITA environments,\nold GHCs and non-GHC implementations with Rank-N\ntype support. Depends only on base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }