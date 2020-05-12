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
      identifier = { name = "anonymous-sums-tests"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/anonymous-sums";
      url = "";
      synopsis = "QuickCheck functions to accompany the anonymous-sums package";
      description = "Contains generators, coarbitrary functions, and shrinkers to\naccompany the anonymous-sums package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."anonymous-sums" or (errorHandler.buildDepError "anonymous-sums"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }