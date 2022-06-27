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
      identifier = {
        name = "nonempty-wrapper-quickcheck";
        version = "0.1.0.0";
        };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/nonempty-wrapper/nonempty-wrapper-quickcheck";
      url = "";
      synopsis = "QuickCheck instance for 'NonEmpty'";
      description = "QuickCheck instance for 'NonEmpty'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."nonempty-wrapper" or (errorHandler.buildDepError "nonempty-wrapper"))
          ];
        buildable = true;
        };
      };
    }