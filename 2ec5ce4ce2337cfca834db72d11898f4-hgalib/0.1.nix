{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hgalib";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Kevin Ellis <ellisk@catlin.edu>";
        author = "Kevin Ellis";
        homepage = "";
        url = "";
        synopsis = "Haskell Genetic Algorithm Library";
        description = "Haskell Genetic Algorithm Library";
        buildType = "Simple";
      };
      components = {
        hgalib = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.haskell98
          ];
        };
      };
    }