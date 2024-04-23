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
      identifier = { name = "RollingDirectory"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "";
      url = "";
      synopsis = "Limits the size of a directory's contents";
      description = "This is a daemon which monitors a directory and limits it's content's size by deleting old entries";
      buildType = "Simple";
    };
    components = {
      exes = {
        "RollingDirectory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          ] ++ (if compiler.isGhc && compiler.version.ge "7.2"
            then [
              (hsPkgs."hdaemonize-buildfix" or (errorHandler.buildDepError "hdaemonize-buildfix"))
            ]
            else [
              (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
            ]);
          buildable = true;
        };
      };
      tests = {
        "MainTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }