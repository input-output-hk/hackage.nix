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
      identifier = { name = "lens-th-rewrite"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2020";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Rewrites Template Haskell splices using the API";
      description = "A GHC plugin to perform source-to-source transformation on parsed Haskell, used to manually inline Template Haskell calls for lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }