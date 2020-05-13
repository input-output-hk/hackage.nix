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
      specVersion = "1.6";
      identifier = { name = "th-orphans"; version = "0.5.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Orphan instances for TH datatypes";
      description = "In particular, instances for Ord and Lift.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }