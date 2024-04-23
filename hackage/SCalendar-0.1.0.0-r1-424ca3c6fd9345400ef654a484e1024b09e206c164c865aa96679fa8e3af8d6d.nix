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
      identifier = { name = "SCalendar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sebastian0092@gmail.com";
      author = "Sebastian Pulido Gomez";
      homepage = "https://github.com/sebasHack/SCalendar";
      url = "";
      synopsis = "XXXX     ";
      description = "XXXX";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }