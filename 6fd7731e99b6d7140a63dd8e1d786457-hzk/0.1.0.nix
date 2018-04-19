{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "hzk";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "DiegoSouza <dsouza@c0d3.xxx>";
        author = "DiegoSouza <dsouza@c0d3.xxx>";
        homepage = "http://github.com/dgvncsz0f/hzk";
        url = "";
        synopsis = "Haskell client library for Apache Zookeeper";
        description = "A haskell binding to Apache Zookeeper C library";
        buildType = "Simple";
      };
      components = {
        hzk = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.zookeeper_mt ];
        };
        tests = {
          test-zookeeper = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.bytestring
              hsPkgs.tasty-hunit
            ];
            libs = [ pkgs.zookeeper_mt ];
          };
        };
      };
    }