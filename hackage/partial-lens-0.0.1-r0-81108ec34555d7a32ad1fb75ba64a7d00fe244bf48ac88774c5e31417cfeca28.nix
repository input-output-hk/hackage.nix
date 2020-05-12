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
      specVersion = "1.6";
      identifier = { name = "partial-lens"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 Partial Lenses";
      description = "Haskell 98 Partial Lenses";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad-transformers" or (errorHandler.buildDepError "comonad-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          ];
        buildable = true;
        };
      };
    }