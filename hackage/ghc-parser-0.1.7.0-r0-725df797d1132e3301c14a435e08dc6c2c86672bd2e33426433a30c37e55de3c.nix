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
      specVersion = "1.16";
      identifier = { name = "ghc-parser"; version = "0.1.7.0"; };
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
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      };
    }