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
    flags = { prof = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "qrcode"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@kizzx2.com";
      author = "Chris Yuen";
      homepage = "";
      url = "";
      synopsis = "QR Code library in pure Haskell";
      description = "QR Code encoder (and future decoder) in pure Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }