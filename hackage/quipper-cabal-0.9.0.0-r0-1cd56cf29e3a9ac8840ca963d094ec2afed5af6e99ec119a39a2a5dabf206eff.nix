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
      identifier = { name = "quipper-cabal"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Some functions to aid in the creation of Cabal packages for Quipper.";
      description = "This package provides functions that can be used in custom Setup.hs\nscripts, to aid in creating Cabal packages for Quipper programs.\nSpecifically, this allows Cabal to access the Quipper preprocessor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
    };
  }