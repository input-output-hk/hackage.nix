{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stm";
          version = "2.4.3";
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
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }