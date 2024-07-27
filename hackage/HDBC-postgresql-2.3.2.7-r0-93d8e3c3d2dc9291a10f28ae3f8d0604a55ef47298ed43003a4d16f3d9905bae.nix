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
    flags = { splitbase = true; buildtests = false; mintime15 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC-postgresql"; version = "2.3.2.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
      author = "John Goerzen";
      homepage = "http://github.com/hdbc/hdbc-postgresql";
      url = "";
      synopsis = "PostgreSQL driver for HDBC";
      description = "This package provides a PostgreSQL driver for HDBC";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
      ];
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
        ] ++ (if flags.mintime15
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        libs = [ (pkgs."pq" or (errorHandler.sysDepError "pq")) ];
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = pkgs.lib.optionals (flags.buildtests) ([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          ] ++ (if flags.mintime15
            then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]));
          libs = [ (pkgs."pq" or (errorHandler.sysDepError "pq")) ];
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }