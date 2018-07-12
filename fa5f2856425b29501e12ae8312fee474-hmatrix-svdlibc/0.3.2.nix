{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix-svdlibc";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/hmatrix-svdlibc";
        url = "";
        synopsis = "SVDLIBC bindings for HMatrix";
        description = "Bindings for the sparse singular value decomposition\nprovided by SVDLIBC.";
        buildType = "Simple";
      };
      components = {
        "hmatrix-svdlibc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
        exes = {
          "svdlibc-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix
            ];
          };
        };
      };
    }