{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fixed-point-vector-space";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
        author = "Jake McArthur";
        homepage = "";
        url = "";
        synopsis = "vector-space instances for the fixed-point package";
        description = "This package provides instances of VectorSpace,\nAffineSpace, etc. for the fixed-point package.";
        buildType = "Simple";
      };
      components = {
        fixed-point-vector-space = {
          depends  = [
            hsPkgs.base
            hsPkgs.fixed-point
            hsPkgs.vector-space
          ];
        };
      };
    }