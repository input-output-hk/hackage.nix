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
      identifier = { name = "TeaHS"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "http://liamoc.net/tea";
      url = "";
      synopsis = "TeaHS Game Creation Library";
      description = "A simple library for use creating 2D games, inspired by the Ruby library Tea.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."Sprig" or (errorHandler.buildDepError "Sprig"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
          (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
          (hsPkgs."SFont" or (errorHandler.buildDepError "SFont"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }