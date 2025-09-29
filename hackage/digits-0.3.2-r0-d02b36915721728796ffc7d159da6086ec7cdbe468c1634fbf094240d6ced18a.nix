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
      specVersion = "3.8";
      identifier = { name = "digits"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2025 Henry Bucklow, (c) 2016 Charlie Harvey";
      maintainer = "opensource@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "Converts integers to lists of digits and back.";
      description = "Converts integers to lists of digits and back. Supports arbitrary bases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "digits-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."digits" or (errorHandler.buildDepError "digits"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }