{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "boomerang";
          version = "1.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for invertible parsing and printing";
        description = "Specify a single unified grammar which can be used for parsing and pretty-printing";
        buildType = "Simple";
      };
      components = {
        boomerang = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
      };
    }