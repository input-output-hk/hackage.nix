{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "nemesis";
          version = "2013.6.16";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/nemesis";
        url = "";
        synopsis = "a task management tool for Haskell";
        description = "Organize common shell tasks into a meaningful tree like structure with dependency tracking";
        buildType = "Simple";
      };
      components = {
        nemesis = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.air
            hsPkgs.dlist
            hsPkgs.Glob
            hsPkgs.directory
          ];
        };
      };
    }