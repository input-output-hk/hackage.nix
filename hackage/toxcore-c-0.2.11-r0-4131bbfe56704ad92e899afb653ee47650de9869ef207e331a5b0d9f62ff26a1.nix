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
      identifier = { name = "toxcore-c"; version = "0.2.11"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2020 The TokTok Team";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "Haskell bindings to the C reference implementation of Tox";
      description = "Haskell bindings to the C reference implementation of Tox.\n\nSee <https://github.com/TokTok/c-toxcore>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        libs = [ (pkgs."toxcore" or (errorHandler.sysDepError "toxcore")) ];
        buildable = true;
      };
      exes = {
        "groupbot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."toxcore-c" or (errorHandler.buildDepError "toxcore-c"))
          ];
          libs = [ (pkgs."toxcore" or (errorHandler.sysDepError "toxcore")) ];
          buildable = true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-arbitrary" or (errorHandler.buildDepError "bytestring-arbitrary"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
            (hsPkgs."toxcore-c" or (errorHandler.buildDepError "toxcore-c"))
          ];
          buildable = true;
        };
      };
    };
  }