{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generics-sop-lens";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/generics-sop-lens#readme";
        url = "";
        synopsis = "Lenses for types in generics-sop";
        description = "Lenses for types in generics-sop package";
        buildType = "Simple";
      };
      components = {
        generics-sop-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.generics-sop
            hsPkgs.lens
          ];
        };
      };
    }