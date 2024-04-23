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
      identifier = { name = "system-gpio"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Kenny Zhuo Ming Lu ";
      maintainer = "luzhuomi@gmail.com";
      author = "Kenny Zhuo Ming Lu";
      homepage = "https://github.com/luzhuomi/system-gpio/";
      url = "https://github.com/luzhuomi/system-gpio/";
      synopsis = "GPIO wrapper libary for Raspberry Pi";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }