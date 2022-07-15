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
      specVersion = "1.18";
      identifier = { name = "swiss"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "GATE MAX CORPORATION 2021-2022";
      maintainer = "Chris Sze <chris@gate-max.com>";
      author = "Chris Sze <chris@gate-max.com>";
      homepage = "https://github.com/gate-max/swiss";
      url = "";
      synopsis = "Basic functions for development with Core libraries and GHC boot libraries dependencies.";
      description = "A library of extra functions for the standard Haskell Core libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }