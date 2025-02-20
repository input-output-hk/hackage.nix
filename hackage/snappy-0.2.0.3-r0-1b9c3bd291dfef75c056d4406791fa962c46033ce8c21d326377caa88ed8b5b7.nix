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
      specVersion = "2.2";
      identifier = { name = "snappy"; version = "0.2.0.3"; };
      license = "Apache-2.0";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "ARJANEN Loïc Jean David <ljd@luigiscorner.mu>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://framagit.org/ljdarj/snappy";
      url = "";
      synopsis = "Fast Haskell bindings to Google’s Snappy compression library.";
      description = "This library provides fast, pure Haskell bindings to Google’s Snappy\ncompression and decompression library: <http://github.com/google/snappy/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = [
          (pkgs."snappy" or (errorHandler.sysDepError "snappy"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.4")) (if system.isLinux
          then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
          else [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }