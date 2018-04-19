{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "attoparsec-conduit";
          version = "1.0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Consume attoparsec parsers via conduit.";
        description = "Consume attoparsec parsers via conduit.";
        buildType = "Simple";
      };
      components = {
        attoparsec-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.conduit
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.resourcet
              hsPkgs.attoparsec
              hsPkgs.attoparsec-conduit
              hsPkgs.conduit
            ];
          };
        };
      };
    }