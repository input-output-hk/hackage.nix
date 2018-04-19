{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base64-conduit";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Base64-encode and decode streams of bytes. (deprecated)";
        description = "Moved to conduit-combinators";
        buildType = "Simple";
      };
      components = {
        base64-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.conduit
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.base64-conduit
              hsPkgs.base64-bytestring
              hsPkgs.transformers
            ];
          };
        };
      };
    }