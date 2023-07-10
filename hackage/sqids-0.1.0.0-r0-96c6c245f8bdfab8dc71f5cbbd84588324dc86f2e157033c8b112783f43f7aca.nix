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
      identifier = { name = "sqids"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2023-present Sqids maintainers";
      maintainer = "hildenjohannes@gmail.com";
      author = "Heikki Johannes Hildén";
      homepage = "https://sqids.org/";
      url = "";
      synopsis = "Sqids is a small library that lets you generate YouTube-looking IDs from numbers.";
      description = "Please see the README on GitHub at <https://github.com/sqids/sqids-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "sqids-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."sqids" or (errorHandler.buildDepError "sqids"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }