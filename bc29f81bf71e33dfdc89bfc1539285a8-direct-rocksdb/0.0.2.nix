{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "direct-rocksdb";
          version = "0.0.2";
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
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.safe-exceptions
          ];
          libs = [
            pkgs."stdc++"
          ] ++ pkgs.lib.optional system.isWindows pkgs.rpcrt4;
        };
        tests = {
          "direct-rocksdb-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.safe-exceptions
              hsPkgs.direct-rocksdb
              hsPkgs.directory
              hsPkgs.filepath
            ];
            libs = [
              pkgs."stdc++"
            ] ++ pkgs.lib.optional system.isWindows pkgs.rpcrt4;
          };
        };
      };
    }