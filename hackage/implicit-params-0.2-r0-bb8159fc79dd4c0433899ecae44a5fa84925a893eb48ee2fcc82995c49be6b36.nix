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
      identifier = { name = "implicit-params"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shane@duairc.com";
      author = "Shane O'Brien";
      homepage = "http://github.com/duairc/implicit";
      url = "";
      synopsis = "Named and unnamed implicit parameters with defaults.";
      description = "Named and unnamed implicit parameters with defaults using type classes and\nconstraint hacks. For examples, see \"Data.Implicit\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        buildable = true;
      };
    };
  }