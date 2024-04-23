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
      specVersion = "1.8";
      identifier = { name = "atom-msp430"; version = "0.5.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "dan.buckmaster@gmail.com";
      author = "Daniel Buckmaster";
      homepage = "https://github.com/eightyeight/atom-msp430";
      url = "";
      synopsis = "Convenience functions for using Atom with the MSP430 microcontroller family.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."atom" or (errorHandler.buildDepError "atom"))
        ];
        buildable = true;
      };
    };
  }