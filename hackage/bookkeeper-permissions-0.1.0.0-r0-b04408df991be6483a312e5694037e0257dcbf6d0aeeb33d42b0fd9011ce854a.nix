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
      identifier = { name = "bookkeeper-permissions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Philip Kamenarsky";
      maintainer = "p.kamenarsky@gmail.com";
      author = "Philip Kamenarsky";
      homepage = "https://github.com/pkamenarsky/bookkeeper-permissions";
      url = "";
      synopsis = "Permissions for bookkeeper records";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bookkeeper" or (errorHandler.buildDepError "bookkeeper"))
          (hsPkgs."type-level-sets" or (errorHandler.buildDepError "type-level-sets"))
        ];
        buildable = true;
      };
    };
  }