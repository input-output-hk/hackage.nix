{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Hmpf";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Thomas L. Bevan <thomas.bevan@gmail.com>";
        author = "Thomas L. Bevan";
        homepage = "";
        url = "";
        synopsis = "An MPD client designed for a Home Theatre PC";
        description = "An MPD client designed to be used on a Home Theatre PC equipt with an infrared remote\nand VDU display.\n\nHmpf is designed to allow the user to navigate through a large digital music collection with\na standard infrared remote and VDU. The client does not need or accept input from the keyboard\n\nHmpf also implements the LastFM protocol and is able to intelligently generate dynamic playlists";
        buildType = "Custom";
      };
      components = {
        exes = {
          hmpf = {
            depends  = [
              hsPkgs.base
              hsPkgs.Crypto
              hsPkgs.time
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.ConfigFile
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }