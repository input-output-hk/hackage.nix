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
      identifier = { name = "digits"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2016 Henry Bucklow, Charlie Harvey";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "Converts integers to lists of digits and back.";
      description = "Converts integers to lists of digits and back.";
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