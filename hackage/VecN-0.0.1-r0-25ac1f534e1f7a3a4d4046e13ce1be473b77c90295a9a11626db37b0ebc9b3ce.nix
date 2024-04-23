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
      specVersion = "1.2";
      identifier = { name = "VecN"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "0slemi0@gmail.com";
      author = "Andras Slemmer";
      homepage = "";
      url = "";
      synopsis = "a simple peano-indexed vector type";
      description = "a simple peano-indexed vector type, some instances and functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
        ];
        buildable = true;
      };
    };
  }