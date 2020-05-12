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
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "type-list"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcin Mrotek, 2015";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "";
      url = "";
      synopsis = "Operations on type-level lists and tuples.";
      description = "Operations on type-level lists and tuples, together with their curried versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }