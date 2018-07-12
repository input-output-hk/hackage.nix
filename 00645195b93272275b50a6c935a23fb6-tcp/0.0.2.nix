{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tcp";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart";
        author = "Peng Li and Stephan Zdancewic";
        homepage = "http://www.cl.cam.ac.uk/~pes20/Netsem/";
        url = "";
        synopsis = "A purely functional TCP implementation";
        description = "A purely functional TCP implementation\n\nPeng Li's TCP stack based on the formal HOL4 TCP\nspecification at\n<http://www.cl.cam.ac.uk/~pes20/Netsem/>,\ncode base on the unified events and threads project\n<http://www.seas.upenn.edu/~lipeng/homepage/unify.html>.";
        buildType = "Simple";
      };
      components = {
        "tcp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-time
          ];
        };
      };
    }