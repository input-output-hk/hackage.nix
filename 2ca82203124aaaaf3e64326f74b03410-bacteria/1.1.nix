{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bacteria";
          version = "1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "daniel@wagner-home.com";
        author = "Daniel Wagner";
        homepage = "http://www.dmwit.com/bacteria";
        url = "http://www.dmwit.com/bacteria/bacteria-current.tar.gz";
        synopsis = "braindead utility to compose Xinerama backgrounds";
        description = "Compose a sequence of images by centering them on rectangles the size of the Xinerama screens available.  Supports jpg, png, and gif input, and produces png output.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bacteria = {
            depends  = [
              hsPkgs.base
              hsPkgs.gd
              hsPkgs.X11
            ];
          };
        };
      };
    }