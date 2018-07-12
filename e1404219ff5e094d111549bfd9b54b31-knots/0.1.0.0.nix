{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "knots";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "knots@kontravariant.de";
        author = "Malte Milatz";
        homepage = "";
        url = "";
        synopsis = "Khovanov homology computations";
        description = "Khovanov homology computations";
        buildType = "Simple";
      };
      components = {
        "knots" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.deepseq
            hsPkgs.yap
            hsPkgs.data-default
            hsPkgs.parallel
            hsPkgs.mtl
            hsPkgs.array
          ];
        };
        exes = {
          "Rolfsen-Kh" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parallel
              hsPkgs.knots
            ];
          };
        };
      };
    }