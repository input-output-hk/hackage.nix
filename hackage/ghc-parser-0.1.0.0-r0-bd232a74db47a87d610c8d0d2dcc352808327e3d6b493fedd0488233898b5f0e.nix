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
      identifier = { name = "ghc-parser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "https://github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "Haskell source parser from GHC.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }