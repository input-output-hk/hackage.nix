{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "AesonBson";
          version = "0.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "CC0";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me> & Andras Slemmer <0slemi0@gmail.com>";
        homepage = "https://github.com/nh2/AesonBson";
        url = "";
        synopsis = "Mapping between Aeson's JSON and Bson objects.";
        description = "This package lets you convert between Aeson's JSON and Bson objects.";
        buildType = "Simple";
      };
      components = {
        AesonBson = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bson
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }