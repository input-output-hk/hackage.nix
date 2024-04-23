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
      identifier = { name = "powerqueue-levelmem"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A high performance in memory and LevelDB backend for powerqueue";
      description = "A high performance in memory and LevelDB backend for powerqueue";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
        ];
        buildable = true;
      };
      tests = {
        "powerqueue-levelmem-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."powerqueue-levelmem" or (errorHandler.buildDepError "powerqueue-levelmem"))
            (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
          libs = [
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            (pkgs."leveldb" or (errorHandler.sysDepError "leveldb"))
            (pkgs."snappy" or (errorHandler.sysDepError "snappy"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "powerqueue-levelmem-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
            (hsPkgs."powerqueue-levelmem" or (errorHandler.buildDepError "powerqueue-levelmem"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
          libs = [
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            (pkgs."leveldb" or (errorHandler.sysDepError "leveldb"))
            (pkgs."snappy" or (errorHandler.sysDepError "snappy"))
          ];
          buildable = true;
        };
      };
    };
  }