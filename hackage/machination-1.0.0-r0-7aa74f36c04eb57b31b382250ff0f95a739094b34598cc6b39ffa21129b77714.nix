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
      specVersion = "1.12";
      identifier = { name = "machination"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2020 KtorZ <matthias.benkort@gmail.com>";
      maintainer = "matthias.benkort@gmail.com";
      author = "KtorZ <matthias.benkort@gmail.com>";
      homepage = "https://github.com/KtorZ/machination#readme";
      url = "";
      synopsis = "Plot charts as unicode strings.";
      description = "Please see the README on GitHub at <https://github.com/KtorZ/machination>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."machination" or (errorHandler.buildDepError "machination"))
          ];
          buildable = true;
        };
      };
    };
  }