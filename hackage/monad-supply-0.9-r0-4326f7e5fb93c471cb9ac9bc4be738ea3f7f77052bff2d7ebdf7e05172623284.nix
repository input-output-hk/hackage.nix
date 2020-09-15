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
      identifier = { name = "monad-supply"; version = "0.9"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2011-2020 Geoff Hulette and HaskellWiki contributors";
      maintainer = "Geoff Hulette <geoff@hulette.net>";
      author = "Geoff Hulette and HaskellWiki contributors";
      homepage = "https://github.com/ghulette/monad-supply";
      url = "";
      synopsis = "Stateful supply monad";
      description = "Support for computations which consume values from a (possibly infinite) supply.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }