{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parsec-trace";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "2015 Gregor Riegler";
        maintainer = "gregor.riegler@gmail.com";
        author = "Gregor Riegler";
        homepage = "http://github.com/sleepomeno/parsec-trace#readme";
        url = "";
        synopsis = "Add a hierarchical trace to Parsec parsers.";
        description = "Manages a tree tracing the hierarchical run of successful parsers in the Parsec user state.";
        buildType = "Simple";
      };
      components = {
        parsec-trace = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }