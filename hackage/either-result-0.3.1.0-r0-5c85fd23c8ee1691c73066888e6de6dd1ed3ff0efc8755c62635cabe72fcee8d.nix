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
      specVersion = "2.2";
      identifier = { name = "either-result"; version = "0.3.1.0"; };
      license = "Apache-2.0";
      copyright = "2020 Kazuki Okamoto (岡本和樹)";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto (岡本和樹)";
      homepage = "https://github.com/kakkun61/either-result";
      url = "";
      synopsis = "‘MonadFail’ instance for a wrapper of ‘ExceptT String m a’.";
      description = "‘ResultT m a’ is a wrapper of ‘ExceptT String m a’ which are similar except ‘MonadFail’ instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either-result" or (errorHandler.buildDepError "either-result"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or (errorHandler.buildToolDepError "doctest-discover")))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either-result" or (errorHandler.buildDepError "either-result"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }