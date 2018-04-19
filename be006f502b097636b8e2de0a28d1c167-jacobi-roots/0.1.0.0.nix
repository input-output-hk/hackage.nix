{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jacobi-roots";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2013 Greg Horn";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "roots of two shifted jacobi polynomials to double precision";
        description = "This package provides pre-computed roots to the shifted Radau and Legendre polynomials. Roots to order of a few hundred are provided.";
        buildType = "Simple";
      };
      components = {
        jacobi-roots = {
          depends  = [ hsPkgs.base ];
        };
      };
    }