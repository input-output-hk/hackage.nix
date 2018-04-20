{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "hzk";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "DiegoSouza";
        author = "DiegoSouza";
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