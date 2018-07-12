{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "BerlekampAlgorithm";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "abdelwahebmiled@gmail.com";
        author = "Abdelwaheb Miled";
        homepage = "";
        url = "";
        synopsis = "Factorization of polynomials over finite field";
        description = "";
        buildType = "Simple";
      };
      components = {
        "BerlekampAlgorithm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.besout
          ];
        };
      };
    }