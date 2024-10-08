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
      identifier = { name = "monad-tx"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow, 2009";
      maintainer = "Matt Morrow <morrow@moonpatio.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "A transactional state monad.";
      description = ".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }