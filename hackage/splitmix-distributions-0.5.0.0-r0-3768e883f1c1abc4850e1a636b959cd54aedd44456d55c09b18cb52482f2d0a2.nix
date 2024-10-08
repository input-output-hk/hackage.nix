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
      identifier = { name = "splitmix-distributions"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/splitmix-distributions#readme";
      url = "";
      synopsis = "Random samplers for some common distributions, based on splitmix.";
      description = "Random samplers for some common distributions, as well as a convenient interface for composing them, based on splitmix. Please see the README on GitHub at <https://github.com/ocramz/splitmix-distributions#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."splitmix-distributions" or (errorHandler.buildDepError "splitmix-distributions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }