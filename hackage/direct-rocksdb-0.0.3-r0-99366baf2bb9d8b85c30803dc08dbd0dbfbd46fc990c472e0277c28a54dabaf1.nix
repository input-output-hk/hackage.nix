{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { system-rocksdb = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-rocksdb"; version = "0.0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.safe-exceptions)
          ];
        };
      tests = {
        "direct-rocksdb-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.direct-rocksdb)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.safe-exceptions)
            ];
          };
        };
      };
    }