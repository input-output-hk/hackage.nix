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
      identifier = { name = "regex-tdfa-quasiquoter"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Eric Brisco";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "http://github.com/erisco/regex-tdfa-quasiquoter";
      url = "";
      synopsis = "Quasi-quoter for TDFA (extended POSIX) regular\nexpressions.";
      description = "Quasi-quoter for TDFA (extended POSIX) regular\nexpressions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
        ];
        buildable = true;
      };
    };
  }