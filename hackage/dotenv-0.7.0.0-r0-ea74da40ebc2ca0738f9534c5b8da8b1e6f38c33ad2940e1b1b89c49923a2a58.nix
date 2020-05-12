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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dotenv"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "2015-2017 Stack Builders Inc.";
      maintainer = "hackage@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/dotenv-hs";
      url = "";
      synopsis = "Loads environment variables from dotenv files";
      description = "\nIn most applications,\n<http://12factor.net/config configuration should be separated from code>.\nWhile it usually works well to keep configuration in the\nenvironment, there are cases where you may want to store\nconfiguration in a file outside of version control.\n\n\"Dotenv\" files have become popular for storing configuration,\nespecially in development and test environments. In\n<https://github.com/bkeepers/dotenv Ruby>,\n<https://github.com/theskumar/python-dotenv Python> and\n<https://www.npmjs.com/package/dotenv Javascript> there are libraries\nto facilitate loading of configuration options from configuration\nfiles. This library loads configuration to environment variables for\nprograms written in Haskell.\n\nTo use, call `loadFile` from your application:\n\n> import Control.Monad (void)\n> import Configuration.Dotenv\n> void \$ loadFile defaultConfig\n\nThis package also includes an executable that can be used\nto inspect the results of applying one or more Dotenv files\nto the environment, or for invoking your executables with\nan environment after one or more Dotenv files is applied.\n\nSee the <https://github.com/stackbuilders/dotenv-hs Github>\npage for more information on this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
        buildable = true;
        };
      exes = {
        "dotenv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dotenv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
          buildable = true;
          };
        };
      };
    }