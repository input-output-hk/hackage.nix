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
      identifier = { name = "lilypond"; version = "1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Bindings to Lilypond";
      description = "This package contains a terse Haskell representation of (a subset of) Lilypond\nexpressions and a pretty-printer for such expressions. They can be used to generate\nmusical notation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."prettify" or (errorHandler.buildDepError "prettify"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      };
    }