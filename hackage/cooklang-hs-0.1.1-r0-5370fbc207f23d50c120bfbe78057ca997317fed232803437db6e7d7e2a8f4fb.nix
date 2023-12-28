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
      specVersion = "3.6";
      identifier = { name = "cooklang-hs"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Isaac Van Doren 2022-present";
      maintainer = "69181572+isaacvando@users.noreply.github.com";
      author = "Isaac Van Doren";
      homepage = "https://github.com/isaacvando/cooklang-hs";
      url = "";
      synopsis = "Parser for the Cook markup language";
      description = "Parser for the Cook markup language. See more about Cook at https://cooklang.org/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      exes = {
        "cooklang-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-cooklang-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }