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
      identifier = { name = "VecN"; version = "0.0.2"; };
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
          (hsPkgs."Peano" or (errorHandler.buildDepError "Peano"))
        ];
        buildable = true;
      };
    };
  }