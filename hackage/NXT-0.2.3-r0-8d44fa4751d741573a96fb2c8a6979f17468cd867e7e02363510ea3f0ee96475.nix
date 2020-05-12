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
      identifier = { name = "NXT"; version = "0.2.3"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011-2013 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "A Haskell interface to Lego Mindstorms NXT";
      description = "A Haskell interface to Lego Mindstorms NXT over Bluetoooth. It supports direct commands, messages and\nmany sensors (also unofficial). It has also support for a simple message-based control of a NXT brick\nvia remotely executed program (basic NXC code included).\n\nIt contains three simple programs: @nxt-upload@ for uploading files to a NXT brick, @nxt-status@ for displaying\na NXT brick status, and @nxt-shutdown@ for remote shutdown of a NXT brick.\n\nIt works on Linux, Mac OS X and Windows.\n\nFeel free to contribute additional features, interfaces for more sensors and propose or write other\n(example) programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."bluetooth" or (errorHandler.sysDepError "bluetooth"));
        buildable = true;
        };
      exes = {
        "nxt-shutdown" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."NXT" or (errorHandler.buildDepError "NXT"))
            ];
          buildable = true;
          };
        "nxt-status" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."NXT" or (errorHandler.buildDepError "NXT"))
            ];
          buildable = true;
          };
        "nxt-upload" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."NXT" or (errorHandler.buildDepError "NXT"))
            ];
          buildable = true;
          };
        };
      tests = {
        "nxt-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."NXT" or (errorHandler.buildDepError "NXT"))
            ];
          buildable = true;
          };
        };
      };
    }