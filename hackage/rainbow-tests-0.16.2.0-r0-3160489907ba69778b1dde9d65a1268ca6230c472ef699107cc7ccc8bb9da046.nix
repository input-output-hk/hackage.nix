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
      specVersion = "1.12";
      identifier = { name = "rainbow-tests"; version = "0.16.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 - 2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Tests and QuickCheck generators to accompany rainbow.";
      description = "These are packaged separately so other packages may depend\non them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."barecheck" or (errorHandler.buildDepError "barecheck"))
        ];
        buildable = true;
      };
    };
  }