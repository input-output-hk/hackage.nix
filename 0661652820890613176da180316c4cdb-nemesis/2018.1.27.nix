{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "nemesis";
          version = "2018.1.27";
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
            hsPkgs.Glob
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.time
          ];
        };
      };
    }