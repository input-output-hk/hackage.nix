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
      identifier = { name = "involutive-semigroups"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Nicholas Coltharp";
      maintainer = "coltharp@pdx.edu";
      author = "Nicholas Coltharp";
      homepage = "";
      url = "";
      synopsis = "Semigroups with involution.";
      description = "Provides a typeclass for semigroups with \"inverse-like\" operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }