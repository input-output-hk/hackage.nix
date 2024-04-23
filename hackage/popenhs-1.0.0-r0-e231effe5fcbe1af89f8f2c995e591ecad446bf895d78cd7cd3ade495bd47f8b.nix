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
      identifier = { name = "popenhs"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jens-Ulrik Petersen <juhp@01.246.ne.jp>";
      author = "Jens-Ulrik Petersen";
      homepage = "http://www.haskell.org/~petersen/haskell/popenhs/";
      url = "";
      synopsis = "popenhs is a popen-like library for Haskell.";
      description = "It provides a convenient way of sending string input to\na subprocess and reading output from it lazily. It requires\nthe Posix module and has been tested under ghc5 so far.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }