{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "online";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/online#readme";
        url = "";
        synopsis = "online statistics";
        description = "transformation of statistics to online algorithms";
        buildType = "Simple";
      };
      components = {
        online = {
          depends  = [
            hsPkgs.base
            hsPkgs.foldl
            hsPkgs.numhask
            hsPkgs.protolude
            hsPkgs.tdigest
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
        exes = {
          online-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.foldl
              hsPkgs.formatting
              hsPkgs.numhask
              hsPkgs.online
              hsPkgs.optparse-generic
              hsPkgs.perf
              hsPkgs.protolude
              hsPkgs.scientific
              hsPkgs.text
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.online
              hsPkgs.protolude
              hsPkgs.tasty
            ];
          };
        };
      };
    }