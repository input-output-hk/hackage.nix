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
      specVersion = "3.0";
      identifier = { name = "miso-optics"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "dmjio (c) 2026";
      maintainer = "code@dmj.io";
      author = "dmjio";
      homepage = "https://github.com/haskell-miso/miso-optics";
      url = "";
      synopsis = "An adaptor package for using miso with optics.";
      description = "This package provides optics-compatible Binding combinators for miso";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
        ];
        buildable = true;
      };
    };
  }