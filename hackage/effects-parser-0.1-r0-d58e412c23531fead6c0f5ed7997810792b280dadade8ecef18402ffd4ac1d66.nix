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
      identifier = { name = "effects-parser"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nybble41@gmail.com";
      author = "Jesse McDonald";
      homepage = "http://github.com/nybble41/effects-parser";
      url = "";
      synopsis = "Parser Effect for the Control.Effects Library";
      description = "Control.Effects.Parser is a parsing effect for the Control.Effects library.\nControl.Effects is a library for programming with effects, like in the the Eff language by\nAndrej Bauer and Matija Pretnar. Effects can be used instead of monad transformers.\n\nSee the home page for some example code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effects" or (errorHandler.buildDepError "effects"))
          ];
        buildable = true;
        };
      };
    }