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
      identifier = { name = "terminfo-hs"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bryan Richter, 2013";
      maintainer = "bryan.richter@gmail.com";
      author = "Bryan Richter";
      homepage = "";
      url = "";
      synopsis = "A pure-Haskell (no FFI) module for accessing terminfo databases";
      description = "This module can acquire terminfo databases and query\nthem for terminal capabilities. For details of\nterminfo, consult the man pages for term(5) and\nterminfo(5).\nThis package is dead simple, and doesn't do anything\nfancy with the capabilities themselves. It merely\nprovides a means for accessing them.";
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
        "System.Terminfo.Internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }