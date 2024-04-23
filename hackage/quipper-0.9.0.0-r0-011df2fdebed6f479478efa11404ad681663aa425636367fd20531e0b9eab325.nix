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
      identifier = { name = "quipper"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoît Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Meta-package for Quipper.";
      description = "This is a meta-package for Quipper, the embedded functional\nprogramming language for quantum computing. Installing this package\nautomatically installs everything you need for Quipper, including\nthe quipper-language, quipper-libraries, and quipper-tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
          (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
          (hsPkgs."quipper-tools" or (errorHandler.buildDepError "quipper-tools"))
        ];
        buildable = true;
      };
    };
  }