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
      identifier = { name = "size-based"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonas.duregard@chalmers.se";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Sized functors, for size-based enumerations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dictionary-sharing" or (errorHandler.buildDepError "dictionary-sharing"))
          (hsPkgs."testing-type-modifiers" or (errorHandler.buildDepError "testing-type-modifiers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }