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
      identifier = { name = "Craft3e"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) Addison Wesley";
      maintainer = "Simon Thompson <s.j.thompson@kent.ac.uk>";
      author = "Simon Thompson";
      homepage = "http://www.haskellcraft.com/";
      url = "";
      synopsis = "Code for Haskell: the Craft of Functional Programming, 3rd ed.";
      description = "\nUse as follows:\n\n1. Download via: @cabal unpack Craft3e@\n\n2. Go to directory: @cd Craft3e-<version>@\n\n3. Install dependencies: @cabal install --disable-documentation@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
      exes = {
        "performanceI" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Craft3e" or (errorHandler.buildDepError "Craft3e"))
          ];
          buildable = true;
        };
        "performanceIA" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Craft3e" or (errorHandler.buildDepError "Craft3e"))
          ];
          buildable = true;
        };
        "performanceIS" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Craft3e" or (errorHandler.buildDepError "Craft3e"))
          ];
          buildable = true;
        };
      };
    };
  }