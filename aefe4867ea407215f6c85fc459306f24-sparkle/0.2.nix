{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sparkle";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 EURL Tweag";
        maintainer = "alp.mestanogullari@tweag.io";
        author = "Tweag I/O";
        homepage = "";
        url = "";
        synopsis = "Distributed Apache Spark applications in Haskell";
        description = "See README.md";
        buildType = "Custom";
      };
      components = {
        sparkle = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.distributed-closure
            hsPkgs.inline-java
            hsPkgs.singletons
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          sparkle = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.sparkle
              hsPkgs.text
              hsPkgs.zip-archive
            ];
          };
        };
      };
    }