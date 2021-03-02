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
      specVersion = "1.8";
      identifier = { name = "opentheory-bits"; version = "1.64"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Natural number to bit-list conversions";
      description = "Natural number to bit-list conversions - this package was automatically\ngenerated from the OpenTheory package natural-bits-1.64";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          (hsPkgs."opentheory-probability" or (errorHandler.buildDepError "opentheory-probability"))
          ];
        buildable = true;
        };
      };
    }