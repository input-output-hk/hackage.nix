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
      identifier = { name = "monoid-extras"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Various extra monoid-related definitions and utilities";
      description = "Various extra monoid-related definitions and utilities,\nsuch as monoid actions, monoid coproducts, \\\"deletable\\\"\nmonoids, \\\"split\\\" monoids, and \\\"cut\\\" monoids.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."groupoids" or (errorHandler.buildDepError "groupoids"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }