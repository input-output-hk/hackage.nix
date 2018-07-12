{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "typography-geometry";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Drawings for printed text documents";
        description = "Drawings for printed text documents";
        buildType = "Simple";
      };
      components = {
        "typography-geometry" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.polynomials-bernstein
            hsPkgs.containers
            hsPkgs.parallel
          ];
        };
      };
    }