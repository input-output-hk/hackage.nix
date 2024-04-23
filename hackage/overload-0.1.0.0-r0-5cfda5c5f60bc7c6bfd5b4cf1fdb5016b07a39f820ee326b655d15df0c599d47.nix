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
      identifier = { name = "overload"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Luka";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/LukaHorvat/overload";
      url = "";
      synopsis = "Finite overloading";
      description = "Provides a mechanism for finite overloading";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."simple-effects" or (errorHandler.buildDepError "simple-effects"))
        ];
        buildable = true;
      };
    };
  }