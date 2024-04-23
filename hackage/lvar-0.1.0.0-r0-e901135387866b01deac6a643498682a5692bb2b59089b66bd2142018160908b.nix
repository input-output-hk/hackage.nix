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
      specVersion = "2.4";
      identifier = { name = "lvar"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/lvar";
      url = "";
      synopsis = "TMVar that can be listened to";
      description = "LVar wraps a TMVar to allow multiple threads to listen to the underlying changes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
        ];
        buildable = true;
      };
    };
  }