{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "splot";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Eugene Kirpichov, 2010";
        maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
        author = "Eugene Kirpichov <ekirpichov@gmail.com>";
        homepage = "http://www.haskell.org/haskellwiki/Splot";
        url = "";
        synopsis = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.";
        description = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.\nEach process has a name, it starts at a point in time, ends at a point in time, and at some\npoints in time it changes colour.";
        buildType = "Simple";
      };
      components = {
        exes = {
          splot = {
            depends  = [
              hsPkgs.cairo
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.strptime
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.colour
              hsPkgs.haskell98
              hsPkgs.Chart
              hsPkgs.mtl
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }