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
      specVersion = "0";
      identifier = { name = "hsql"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Krasimir Angelov <ka2_mail@yahoo.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Simple library for database access from Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }