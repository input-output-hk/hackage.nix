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
      identifier = { name = "terminfo-hs"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Bryan Richter, 2013–2015";
      maintainer = "bryan.richter@gmail.com";
      author = "Bryan Richter";
      homepage = "";
      url = "";
      synopsis = "A pure-Haskell (no FFI) module for accessing terminfo databases";
      description = "This module can acquire terminfo databases and query them for terminal\ncapabilities. For details of terminfo, consult the man pages for\nterm(5) and terminfo(5).\nThis package is dead simple, and doesn't do anything fancy with the\ncapabilities themselves. It merely provides a means for accessing them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
          ];
          buildable = true;
        };
      };
    };
  }