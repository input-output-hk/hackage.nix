{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jacobi-roots";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Greg Horn";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "http://github.com/ghorn/jacobi-roots";
        url = "";
        synopsis = "Roots of two shifted Jacobi polynomials (Legendre and Radau) to double precision";
        description = "This package provides roots of shifted Radau and Legendre polynomials to double precision.\n\nThe roots are precomputed using a Mathematica script, and degrees of up to a few hundred are provided.\n\nSee the \"JacobiRoots\" module for documentation\n\nTo build this from scratch, first run @compute_roots.nb@ in Mathematica to generate @gen\\/JacobiRootsRaw300.hs@. Then type @make@ to run @gen\\/Convert.hs@, which creates @src\\/JacobiRootsBinary.hs@. Then the normal @cabal configure; cabal build@";
        buildType = "Simple";
      };
      components = {
        jacobi-roots = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }