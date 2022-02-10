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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "configurator-ng"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan\nCopyright 2015-2016 Leon P Smith";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Bryan O'Sullivan, Leon P Smith";
      homepage = "http://github.com/lpsmith/configurator-ng";
      url = "";
      synopsis = "The next generation of configuration management";
      description = "A configuration management library for programs and daemons.\n\nFeatures include:\n\n* A simple, but flexible, configuration language, supporting several\nof the most commonly needed types of data, along with\ninterpolation of strings from the configuration or the system\nenvironment (e.g. @$(HOME)@).\n\n* An @import@ directive allows the configuration of a complex\napplication to be split across several smaller files, or common\nconfiguration data to be shared across several applications.\n\n* An expressive applicative/monadic high-level parsing interface\nto gracefully scale to more complicated configuration needs,  with\npowerful diagnostic messaging mechanism.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."critbit" or (errorHandler.buildDepError "critbit"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."configurator-ng" or (errorHandler.buildDepError "configurator-ng"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }