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
      identifier = { name = "esqueleto-pgcrypto"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Kyriakos Papachrysanthou";
      maintainer = "papachrysanthou.k@gmail.com";
      author = "Kyriakos Papachrysanthou";
      homepage = "https://github.com/3kyro/esqueleto-pgcrypto#readme";
      url = "";
      synopsis = "Esqueleto support for the pgcrypto PostgreSQL module";
      description = "Please see the README on GitHub at <https://github.com/3kyro/esqueleto-pgcrypto#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "esqueleto-pgcrypto-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."esqueleto-pgcrypto" or (errorHandler.buildDepError "esqueleto-pgcrypto"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ];
          buildable = true;
          };
        };
      };
    }