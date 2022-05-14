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
      identifier = { name = "species"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Computational combinatorial species";
      description = "A DSL for describing and computing with combinatorial species,\ne.g. counting labeled or unlabeled structures, or generating\na list of all labeled structures for a species.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."np-extras" or (errorHandler.buildDepError "np-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multiset-comb" or (errorHandler.buildDepError "multiset-comb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }