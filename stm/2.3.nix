{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stm";
          version = "2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Software Transactional Memory";
        description = "A modular composable concurrency abstraction.";
        buildType = "Simple";
      };
      components = {
        stm = {
          depends  = ([
            hsPkgs.base
            hsPkgs.array
          ] ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
        };
      };
    }