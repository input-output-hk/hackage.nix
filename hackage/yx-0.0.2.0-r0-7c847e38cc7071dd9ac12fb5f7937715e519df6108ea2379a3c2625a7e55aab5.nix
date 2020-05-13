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
      identifier = { name = "yx"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/yx";
      url = "";
      synopsis = "Row-major coordinates";
      description = "https://github.com/mtth/yx";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "yx-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yx" or (errorHandler.buildDepError "yx"))
            ];
          buildable = true;
          };
        };
      };
    }