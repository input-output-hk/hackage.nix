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
      specVersion = "1.2.3";
      identifier = { name = "species"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Combinatorial species library";
      description = "A DSL for describing combinatorial species, along with a number\nof ways to interpret it, to e.g. count labelled or unlabelled\nspecies, or generate species elements.";
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