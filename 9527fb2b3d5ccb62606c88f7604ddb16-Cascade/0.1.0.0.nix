{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Cascade";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "noah.easterly@gmail.com";
        author = "Noah Luck Easterly";
        homepage = "http://github.com/rampion/Cascade";
        url = "";
        synopsis = "Playing with reified categorical composition";
        description = "";
        buildType = "Simple";
      };
      components = {
        Cascade = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.mtl
            hsPkgs.ghc-prim
            hsPkgs.void
          ];
        };
      };
    }