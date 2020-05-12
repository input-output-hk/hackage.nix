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
      identifier = { name = "ghcflags"; version = "1.0.2"; };
      license = "BSD-2-Clause";
      copyright = "2019 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Dump the ghc flags during compilation";
      description = "Generate @.ghc.flags@ files during compilation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }