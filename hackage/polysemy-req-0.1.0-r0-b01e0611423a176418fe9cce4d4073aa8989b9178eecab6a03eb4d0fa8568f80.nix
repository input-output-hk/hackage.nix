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
      specVersion = "2.4";
      identifier = { name = "polysemy-req"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "themorrowm@gmail.com";
      author = "Morrow";
      homepage = "https://github.com/morrowm/polysemy-req";
      url = "";
      synopsis = "Polysemy effect for req";
      description = "A basic effect for making req requests inside a polysemy application. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          ];
        buildable = true;
        };
      };
    }