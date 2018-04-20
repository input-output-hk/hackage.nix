{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mp3decoder";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Bjorn Edstrom, 2008";
        maintainer = "be@bjrn.se";
        author = "Bjorn Edstrom";
        homepage = "http://www.bjrn.se/mp3dec";
        url = "";
        synopsis = "MP3 decoder for teaching.";
        description = "This is an MP3 decoder written (almost) completely in Haskell.\nThe current version is experimental software, written for\nteaching purposes, and is currently too slow to be usable in\npractice. For the accompanying article, se www.bjrn.se/mp3dec";
        buildType = "Simple";
      };
      components = {
        exes = {
          mp3driver = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.binary-strict
              hsPkgs.haskell98
            ];
          };
        };
      };
    }