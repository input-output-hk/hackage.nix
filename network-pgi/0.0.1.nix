{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network-pgi";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "het32@cornell.edu";
        author = "Harry Terkelsen";
        homepage = "";
        url = "";
        synopsis = "Library for writing PGI applications";
        description = "Provides an API to create and serve PGI applications.";
        buildType = "Simple";
      };
      components = {
        network-pgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.attoparsec-enumerator
            hsPkgs.enumerator
            hsPkgs.tnet
          ];
        };
      };
    }