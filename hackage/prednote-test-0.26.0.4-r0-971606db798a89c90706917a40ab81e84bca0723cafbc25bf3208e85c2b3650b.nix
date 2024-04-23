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
      identifier = { name = "prednote-test"; version = "0.26.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/prednote";
      url = "";
      synopsis = "Tests and QuickCheck generators to accompany prednote.";
      description = "These are packaged separately so other packages may depend\non them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."rainbow-tests" or (errorHandler.buildDepError "rainbow-tests"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."quickpull" or (errorHandler.buildDepError "quickpull"))
          (hsPkgs."barecheck" or (errorHandler.buildDepError "barecheck"))
        ];
        buildable = true;
      };
      exes = {
        "prednote-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."rainbow-tests" or (errorHandler.buildDepError "rainbow-tests"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."quickpull" or (errorHandler.buildDepError "quickpull"))
            (hsPkgs."barecheck" or (errorHandler.buildDepError "barecheck"))
          ];
          buildable = true;
        };
        "prednote-visual-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."rainbow-tests" or (errorHandler.buildDepError "rainbow-tests"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."quickpull" or (errorHandler.buildDepError "quickpull"))
            (hsPkgs."barecheck" or (errorHandler.buildDepError "barecheck"))
          ];
          buildable = true;
        };
      };
    };
  }