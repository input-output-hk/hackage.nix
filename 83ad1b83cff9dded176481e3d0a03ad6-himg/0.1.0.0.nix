{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "himg";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "http://github.com/Fuuzetsu/himg";
        url = "";
        synopsis = "Simple gtk2hs image viewer. Point it at an image and fire away.";
        description = "Simple gtk2hs image viewer. Point it at an image and fire away.\nThe only ‘fancy’ feature is the ability to work with Internet URLs.";
        buildType = "Simple";
      };
      components = {
        himg = {
          depends  = [
            hsPkgs.base
            hsPkgs.gtk
            hsPkgs.directory
            hsPkgs.HTTP
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.temporary
            hsPkgs.http-conduit
          ];
        };
        exes = {
          himg = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.directory
              hsPkgs.HTTP
              hsPkgs.bytestring
              hsPkgs.network
              hsPkgs.temporary
              hsPkgs.http-conduit
            ];
          };
        };
      };
    }