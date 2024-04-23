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
      identifier = { name = "strict-identity"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter at wellposed.com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/strict-identity";
      url = "";
      synopsis = "Strict Identity Monad, handy for writing fast code!";
      description = "strict Identity monad for writing strict performant code sanely";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }