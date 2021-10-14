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
      identifier = { name = "tokyocabinet-haskell"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Tom Tsuruhara";
      homepage = "https://git.singpolyma.net/tokyocabinet-haskell";
      url = "";
      synopsis = "Haskell binding of Tokyo Cabinet";
      description = "Bindings to Tokyo Cabinet library.\nTokyo Cabinet is a modern implementation of DBM.\nFor more about Tokyo Cabinet, see <https://dbmx.net/tokyocabinet/>.\nThis package provides `tokyocabinet.idl compliant' naive interfaces.\nSee, <http://tokyocabinet.sourceforge.net/tokyocabinet.idl>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [
          (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
          ];
        buildable = true;
        };
      tests = {
        "ListTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "MapTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "HDBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "BDBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "FDBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "TDBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "TDBQRYTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "ADBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "TCDBTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        "StorableTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          libs = [
            (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
            ];
          buildable = true;
          };
        };
      };
    }