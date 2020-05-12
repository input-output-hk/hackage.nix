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
      identifier = { name = "configurator-pg"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan\nCopyright 2015-2016 Leon P Smith\nCopyright 2019 Robert Vollmert";
      maintainer = "rob@vllmrt.net";
      author = "Robert Vollmert";
      homepage = "https://github.com/robx/configurator-pg";
      url = "";
      synopsis = "Reduced parser for configurator-ng config files";
      description = "This module provides a simplified and updated interface to the\nconfiguration file format of\n<https://hackage.haskell.org/package/configurator configurator> and\n<https://hackage.haskell.org/package/configurator-ng configurator-ng>.\nIts aim is primarily to allow updating programs that depend on\nconfigurator-ng to new versions of GHC without changing the\nconfiguration file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8") [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configurator-pg" or (errorHandler.buildDepError "configurator-pg"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }