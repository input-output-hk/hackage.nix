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
      identifier = { name = "esqueleto-compat"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Matt von Hagen";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt von Hagen";
      homepage = "https://github.com/parsonsmatt/esqueleto-compat#readme";
      url = "";
      synopsis = "Compatibility operators for Persistent and Esqueleto";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/esqueleto-compat#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
        ];
        buildable = true;
      };
      tests = {
        "esqueleto-compat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."esqueleto-compat" or (errorHandler.buildDepError "esqueleto-compat"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }