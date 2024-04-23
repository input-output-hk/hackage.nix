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
      identifier = { name = "ll-picosat"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Da.Waterworth@gmail.com";
      author = "Daniel Waterworth";
      homepage = "";
      url = "";
      synopsis = "";
      description = "dirt simple picosat bindings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."picosat" or (errorHandler.sysDepError "picosat")) ];
        buildable = true;
      };
    };
  }