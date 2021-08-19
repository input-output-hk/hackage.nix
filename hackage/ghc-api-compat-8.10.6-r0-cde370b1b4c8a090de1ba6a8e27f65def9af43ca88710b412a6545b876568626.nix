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
      specVersion = "1.22";
      identifier = { name = "ghc-api-compat"; version = "8.10.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "";
      url = "";
      synopsis = "GHC-API compatibility helpers";
      description = "GHC codebase is a moving target. This package provides\ncompatibility for codes relying on an older GHC-API version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }