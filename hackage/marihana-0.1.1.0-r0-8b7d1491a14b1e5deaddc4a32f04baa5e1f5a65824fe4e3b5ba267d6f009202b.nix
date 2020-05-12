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
      identifier = { name = "marihana"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018 Akeno Suzukaze";
      maintainer = "nanisanumber+contact@gmail.com";
      author = "Akeno Suzukaze";
      homepage = "https://github.com/suzukeno/marihana#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/suzukeno/marihana#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "marihana" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."marihana" or (errorHandler.buildDepError "marihana"))
            ];
          buildable = true;
          };
        };
      tests = {
        "marihana-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."marihana" or (errorHandler.buildDepError "marihana"))
            ];
          buildable = true;
          };
        };
      };
    }