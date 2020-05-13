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
      specVersion = "1.8";
      identifier = { name = "lens-family-th"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2012-2018";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "http://github.com/DanBurton/lens-family-th#readme";
      url = "";
      synopsis = "Generate lens-family style lenses";
      description = "(see README.md)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "lens-family-th-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."lens-family-th" or (errorHandler.buildDepError "lens-family-th"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }