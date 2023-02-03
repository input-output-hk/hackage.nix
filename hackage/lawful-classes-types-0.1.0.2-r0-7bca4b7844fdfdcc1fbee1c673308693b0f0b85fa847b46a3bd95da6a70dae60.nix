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
      specVersion = "3.0";
      identifier = { name = "lawful-classes-types"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "(c) 2023, Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/lawful-classes";
      url = "";
      synopsis = "Types for lawful-classes";
      description = "Type definitions (aliases) and basic utility functions used in the\n@lawful-classes@ ecosystem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }