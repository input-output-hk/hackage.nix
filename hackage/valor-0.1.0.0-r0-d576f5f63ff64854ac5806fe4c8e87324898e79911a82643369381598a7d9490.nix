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
      identifier = { name = "valor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Luka Hadžiegrić";
      maintainer = "reygoch@gmail.com";
      author = "Luka Hadžiegrić";
      homepage = "https://github.com/reygoch/valor#readme";
      url = "";
      synopsis = "Simple general structured validation library";
      description = "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "valor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."valor" or (errorHandler.buildDepError "valor"))
            ];
          buildable = true;
          };
        };
      };
    }