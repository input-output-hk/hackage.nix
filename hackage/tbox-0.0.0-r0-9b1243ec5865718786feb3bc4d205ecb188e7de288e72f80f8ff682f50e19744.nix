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
      identifier = { name = "tbox"; version = "0.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009";
      homepage = "http://darcs.monoid.at/tbox";
      url = "";
      synopsis = "Transactional variables with IO hooks";
      description = "(to be expanded...)\n\nThis package provides transactional variables with IO hooks.\nSee module 'Control.Concurrent.TFile' for a concrete instance.\n\nFeedback appreciated!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm-io-hooks" or (errorHandler.buildDepError "stm-io-hooks"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."cautious-file" or (errorHandler.buildDepError "cautious-file"))
        ];
        buildable = true;
      };
    };
  }