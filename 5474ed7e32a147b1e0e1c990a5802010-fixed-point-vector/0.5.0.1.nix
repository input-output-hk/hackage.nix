{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixed-point-vector";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
        author = "Jake McArthur";
        homepage = "";
        url = "";
        synopsis = "Unbox instances for the fixed-point package";
        description = "This package allows you to construct unboxed\nvectors of binary fixed-point numerals.";
        buildType = "Simple";
      };
      components = {
        "fixed-point-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.fixed-point
            hsPkgs.vector
          ];
        };
      };
    }