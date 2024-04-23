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
      specVersion = "2.0";
      identifier = { name = "leancheck-enum-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/leancheck-enum-instances";
      url = "";
      synopsis = "listable instances for small enum types";
      description = "Instances of the `Listable` typeclass for all of the types\nin `enum-types`. These are orphan instances, so this should\nonly be used in test suites.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enum-types" or (errorHandler.buildDepError "enum-types"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
        ];
        buildable = true;
      };
    };
  }