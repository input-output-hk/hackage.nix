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
    flags = { use-leb128 = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ipedb"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025-2026 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke, Matthew Pickering, Hannes Siebenhandl";
      homepage = "https://github.com/well-typed/ipedb#README";
      url = "";
      synopsis = "Build databases with IPE data";
      description = "Build databases with IPE data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ] ++ pkgs.lib.optional (flags.use-leb128) (hsPkgs."leb128" or (errorHandler.buildDepError "leb128"));
        buildable = true;
      };
      exes = {
        "ipedb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."ipedb" or (errorHandler.buildDepError "ipedb"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
        "ccdb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."ipedb" or (errorHandler.buildDepError "ipedb"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ipedb-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ipedb" or (errorHandler.buildDepError "ipedb"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ipedb.components.exes.ccdb or (pkgs.pkgsBuildBuild.ccdb or (errorHandler.buildToolDepError "ipedb:ccdb")))
            (hsPkgs.pkgsBuildBuild.ipedb.components.exes.ipedb or (pkgs.pkgsBuildBuild.ipedb or (errorHandler.buildToolDepError "ipedb:ipedb")))
          ];
          buildable = true;
        };
      };
    };
  }