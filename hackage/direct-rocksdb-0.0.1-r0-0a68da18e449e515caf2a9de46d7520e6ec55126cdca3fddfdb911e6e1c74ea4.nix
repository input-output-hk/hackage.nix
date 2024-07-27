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
      identifier = { name = "direct-rocksdb"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/direct-rocksdb#readme";
      url = "";
      synopsis = "Bindings to RocksDB.";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-toolkit or (pkgs.pkgsBuildBuild.cabal-toolkit or (errorHandler.setupDepError "cabal-toolkit")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
      ];
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
        buildable = true;
      };
      tests = {
        "direct-rocksdb-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."direct-rocksdb" or (errorHandler.buildDepError "direct-rocksdb"))
          ];
          libs = [
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ] ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
          buildable = true;
        };
      };
    };
  }