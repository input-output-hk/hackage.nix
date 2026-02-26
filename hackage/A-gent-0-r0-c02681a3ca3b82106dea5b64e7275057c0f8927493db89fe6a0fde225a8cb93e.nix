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
      specVersion = "3.6";
      identifier = { name = "A-gent"; version = "0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2026 SPISE MISU ApS";
      maintainer = "SPISE MISU <mail+hackage@spisemisu.com>";
      author = "SPISE MISU";
      homepage = "https://a-gent.org";
      url = "";
      synopsis = "Λ-gent, based on placeholder definitions for TODO and unimplemented";
      description = "Λ-gent, based placeholder definitions for TODO and unimplemented code";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }