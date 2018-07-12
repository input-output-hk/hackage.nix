{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nemesis";
          version = "2010.10.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/nemesis";
        url = "";
        synopsis = "a Rake like task management tool";
        description = "smart per project code snippets";
        buildType = "Simple";
      };
      components = {
        "nemesis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.Glob
            hsPkgs.mps
          ];
        };
        exes = {
          "nemesis" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
            ];
          };
        };
      };
    }