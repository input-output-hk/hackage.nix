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
    flags = { static = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dotenv"; version = "0.12.0.0"; };
      license = "MIT";
      copyright = "2015-Present Stack Builders Inc.";
      maintainer = "hackage@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/dotenv-hs";
      url = "";
      synopsis = "Loads environment variables from dotenv files";
      description = "\nIn most applications,\n<https://12factor.net/config configuration should be separated from code>.\nWhile it usually works well to keep configuration in the\nenvironment, there are cases where you may want to store\nconfiguration in a file outside of version control.\n\n@Dotenv@ files have become popular for storing configuration,\nespecially in development and test environments. In\n<https://github.com/bkeepers/dotenv Ruby>,\n<https://github.com/theskumar/python-dotenv Python> and\n<https://www.npmjs.com/package/dotenv JavaScript> there are libraries\nto facilitate loading of configuration options from configuration\nfiles. This library loads configuration to environment variables for\nprograms written in Haskell.\n\nTo use, call `loadFile` from your application:\n\n> import Configuration.Dotenv\n> loadFile defaultConfig\n\nThis package also includes an executable that can be used\nto inspect the results of applying one or more Dotenv files\nto the environment, or for invoking your executables with\nan environment after one or more Dotenv files is applied.\n\nSee the <https://github.com/stackbuilders/dotenv-hs#readme Github>\npage for more information on this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."shellwords" or (errorHandler.buildDepError "shellwords"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
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
          ];
          buildable = true;
        };
      };
      tests = {
        "dotenv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dotenv" or (errorHandler.buildDepError "dotenv"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }