{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inf-interval";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2008-2015 Ramin Honary";
        maintainer = "ramin.honary@gmail.com";
        author = "Ramin Honary";
        homepage = "https://github.com/RaminHAL9001/inf-interval";
        url = "";
        synopsis = "Non-contiguous interval data types with potentially infinite ranges.";
        description = "Non-contiguous interval data types with potentially infinite ranges.\nThis library was originally part of the Dao package, but has been branched\ninto it's own package in the hopes that it will be useful in a wider\nvariety of projects.";
        buildType = "Simple";
      };
      components = {
        inf-interval = {
          depends  = [
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }