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
      identifier = { name = "reflection-extras"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff, Edward Kmett, Austin Seipp";
      homepage = "http://github.com/jfischoff/reflection-extras";
      url = "";
      synopsis = "Utilities for the reflection package";
      description = "This package is meant to implement the constraint machinary for the\nreflection package. It has been primarly ripped from the Constraint example\nof the reflection package with some extension.\n\nThe implementation is also influenced by Austin Seipp's\n<https://www.fpcomplete.com/user/thoughtpolice/using-reflection article>\non the reflection package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
    };
  }