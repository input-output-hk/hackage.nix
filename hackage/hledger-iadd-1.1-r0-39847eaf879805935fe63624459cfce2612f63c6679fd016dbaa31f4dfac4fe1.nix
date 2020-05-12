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
      specVersion = "1.10";
      identifier = { name = "hledger-iadd"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hans-Peter Deifel";
      maintainer = "hpd@hpdeifel.de";
      author = "Hans-Peter Deifel";
      homepage = "http://github.com/rootzlevel/hledger-iadd#readme";
      url = "";
      synopsis = "A terminal UI as drop-in replacement for hledger add";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          ];
        buildable = true;
        };
      exes = {
        "hledger-iadd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hledger-iadd" or (errorHandler.buildDepError "hledger-iadd"))
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hledger-iadd" or (errorHandler.buildDepError "hledger-iadd"))
            (hsPkgs."hledger-lib" or (errorHandler.buildDepError "hledger-lib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }