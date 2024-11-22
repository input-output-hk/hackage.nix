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
      identifier = { name = "unification-fd"; version = "0.12.0"; };
      license = "BSD-3-Clause";
      copyright = "2007–2024 wren romano";
      maintainer = "wren@cpan.org";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
        ];
        buildable = true;
      };
    };
  }