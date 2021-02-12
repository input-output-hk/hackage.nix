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
      identifier = { name = "quipper-tools"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine, Won Ng,\nNeil J. Ross, Peter Selinger, Benoit Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Miscellaneous stand-alone tools for Quipper";
      description = "This package provides some stand-alone tools for Quipper, with demos\nfor how to write more such tools.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.quipper-cabal or (pkgs.buildPackages.quipper-cabal or (errorHandler.setupDepError "quipper-cabal")))
        ];
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "quipper-approximate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-ascii" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-binary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-cliffordt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-depth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-eps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-exact" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-gatecount" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-pdf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-preview" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-simulate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
            (hsPkgs."fixedprec" or (errorHandler.buildDepError "fixedprec"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-standard" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-strict" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-trimcontrols" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-unbox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "quipper-qclparser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        };
      };
    }