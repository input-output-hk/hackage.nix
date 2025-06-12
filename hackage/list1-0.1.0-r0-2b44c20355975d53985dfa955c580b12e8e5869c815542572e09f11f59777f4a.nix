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
      specVersion = "3.4";
      identifier = { name = "list1"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brown.m@proton.me";
      author = "Melanie Phoenix Brown";
      homepage = "";
      url = "";
      synopsis = "Helpers for working with NonEmpty lists.";
      description = "Please see the README at https://github.com/mixphix/list1";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }