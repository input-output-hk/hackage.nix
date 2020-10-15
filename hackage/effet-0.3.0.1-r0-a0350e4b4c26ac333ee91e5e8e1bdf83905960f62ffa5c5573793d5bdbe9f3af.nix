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
      identifier = { name = "effet"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/effet#readme";
      url = "";
      synopsis = "An Effect System based on Type Classes";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/effet#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }