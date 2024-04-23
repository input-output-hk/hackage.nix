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
      identifier = { name = "sized-wrapper-quickcheck"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/sized-wrapper/sized-wrapper-quickcheck";
      url = "";
      synopsis = "QuickCheck instance for 'Sized'";
      description = "QuickCheck instance for 'Sized'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."sized-wrapper" or (errorHandler.buildDepError "sized-wrapper"))
        ];
        buildable = true;
      };
    };
  }