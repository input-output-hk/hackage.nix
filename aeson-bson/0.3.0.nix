{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aeson-bson";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "CC0";
        maintainer = "Niklas Hambuechen <mail@nh2.me>";
        author = "Niklas Hambuechen <mail@nh2.me> & Andras Slemmer <0slemi0@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Mapping between Aeson's JSON and Bson objects.";
        description = "This package lets you convert between Aeson's JSON and Bson objects.";
        buildType = "Simple";
      };
      components = {
        aeson-bson = {
          depends  = [
            hsPkgs.array
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }