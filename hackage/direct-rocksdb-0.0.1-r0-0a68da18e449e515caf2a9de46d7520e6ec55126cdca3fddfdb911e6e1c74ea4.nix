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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-toolkit or (pkgs.buildPackages.cabal-toolkit or (errorHandler.buildToolDepError "cabal-toolkit")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ] ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
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
            ] ++ (pkgs.lib).optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
          buildable = true;
          };
        };
      };
    }