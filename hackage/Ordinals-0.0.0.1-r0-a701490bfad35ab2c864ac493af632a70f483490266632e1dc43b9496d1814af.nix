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
      specVersion = "0";
      identifier = { name = "Ordinals"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kya@pdx.edu";
      author = "Ki Yung Ahn";
      homepage = "https://patch-tag.com/r/kyagrd/Ordinals/";
      url = "";
      synopsis = "Ordinal arithmetic";
      description = "Ordinal arithmetic implementation up to epsilon_0.\nCurrently based on interated multiset representation,\nplanning to add CNF based implenetation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }