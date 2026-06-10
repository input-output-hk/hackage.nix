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
    flags = { pkgconfig = true; dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "magic"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2009 John Goerzen";
      maintainer = "Philippe <philippedev101@gmail.com>";
      author = "John Goerzen";
      homepage = "https://github.com/philippedev101/magic-haskell";
      url = "";
      synopsis = "Interface to C file/magic library";
      description = "This package provides a Haskell interface to the C libmagic library.\nWith it, you can determine the type of a file by examining its contents\nrather than its name.  The Haskell interface provides a full-featured\nbinding.\n\nNote: this package requires the C libmagic library (part of the @file@\npackage) and its development headers to be installed at build time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.10") (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"));
        libs = pkgs.lib.optional (!flags.pkgconfig) (pkgs."magic" or (errorHandler.sysDepError "magic"));
        pkgconfig = pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs."libmagic" or (errorHandler.pkgConfDepError "libmagic"));
        buildable = true;
      };
      tests = {
        "magic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."magic" or (errorHandler.buildDepError "magic"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }