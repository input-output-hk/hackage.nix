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
      specVersion = "1.2";
      identifier = { name = "species"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Computational combinatorial species";
      description = "A DSL for describing and computing with combinatorial species,\ne.g. counting labelled or unlabelled structures, or generating\na list of all labeled structures for a species.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."np-extras" or (errorHandler.buildDepError "np-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lub" or (errorHandler.buildDepError "lub"))
          ];
        buildable = true;
        };
      };
    }