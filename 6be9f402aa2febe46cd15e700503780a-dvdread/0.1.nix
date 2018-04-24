{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dvdread";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Nicola Squartini <tensor5@gmail.com>";
        author = "Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "A monadic interface to libdvdread";
        description = "This module represents the functions of libdvdread as actions wrapped in the DVDRead monad.";
        buildType = "Simple";
      };
      components = {
        dvdread = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
          pkgconfig = [
            pkgconfPkgs.dvdread
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }