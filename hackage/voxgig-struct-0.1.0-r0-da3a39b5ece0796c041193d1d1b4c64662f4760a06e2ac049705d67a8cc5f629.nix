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
      specVersion = "2.4";
      identifier = { name = "voxgig-struct"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2025-2026 Voxgig Ltd.";
      maintainer = "richard.rodger@voxgig.com";
      author = "Voxgig";
      homepage = "https://github.com/voxgig/struct";
      url = "";
      synopsis = "Haskell port of voxgig/struct: JSON-like data structure utilities.";
      description = "A faithful Haskell port of the canonical voxgig/struct library: utilities for\nwalking, merging, transforming, injecting into, and validating JSON-like data\nstructures (getpath, merge, inject, transform, validate, walk). No third-party\ndependencies — only the GHC boot libraries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }