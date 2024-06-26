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
      identifier = { name = "extended-categories"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ianmllgn@gmail.com";
      author = "Ian Milligan";
      homepage = "github.com/ian-mi/extended-categories";
      url = "";
      synopsis = "Extended Categories";
      description = "An implementation of category theory which makes use of GHC's enriched kind system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }