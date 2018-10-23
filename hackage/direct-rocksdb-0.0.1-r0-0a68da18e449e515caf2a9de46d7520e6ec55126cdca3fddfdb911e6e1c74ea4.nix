{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "direct-rocksdb";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/direct-rocksdb#readme";
      url = "";
      synopsis = "Bindings to RocksDB.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "direct-rocksdb" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs."stdc++")
        ] ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
      };
      tests = {
        "direct-rocksdb-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.direct-rocksdb)
          ];
          libs = [
            (pkgs."stdc++")
          ] ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
        };
      };
    };
  }