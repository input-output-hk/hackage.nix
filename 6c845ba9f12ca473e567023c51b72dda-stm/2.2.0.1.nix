{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stm";
          version = "2.2.0.1";
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