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
      specVersion = "3.0";
      identifier = { name = "nonempty-wrapper-text"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/nonempty-wrapper/nonempty-wrapper-text";
      url = "";
      synopsis = "'NonEmpty' wrappers for text";
      description = "'NonEmpty' wrappers for text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."nonempty-wrapper" or (errorHandler.buildDepError "nonempty-wrapper"))
          ];
        buildable = true;
        };
      };
    }