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
      identifier = { name = "unification-fd"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2021 wren gayle romano";
      maintainer = "winterkoninkje@gmail.com";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Simple generic unification algorithms.";
      description = "Generic functions for single-sorted first-order structural\nunification (think of programming in Prolog, or of the metavariables\nin type inference).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }