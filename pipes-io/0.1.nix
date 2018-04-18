{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-io";
          version = "0.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2016 Yin Guanhao <yinguanhao@gmail.com>";
        maintainer = "Yin Guanhao <yinguanhao@gmail.com>";
        author = "Yin Guanhao";
        homepage = "";
        url = "";
        synopsis = "Stateful IO streams based on pipes";
        description = "`pipes-io` allows you to use pipes and `Parser`s more easily in the\nIO monad, providing a interface similar to that of `io-streams`.";
        buildType = "Simple";
      };
      components = {
        pipes-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes
            hsPkgs.pipes-parse
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-io
              hsPkgs.pipes
              hsPkgs.hspec
            ];
          };
        };
      };
    }