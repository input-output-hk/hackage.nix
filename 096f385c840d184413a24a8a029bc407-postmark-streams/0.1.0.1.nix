{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postmark-streams";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "";
        url = "";
        synopsis = "Send email via Postmark using io-streams.";
        description = "Send email via Postmark using io-streams.";
        buildType = "Simple";
      };
      components = {
        "postmark-streams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.http-streams
            hsPkgs.io-streams
            hsPkgs.text
            hsPkgs.base64-bytestring
            hsPkgs.time
          ];
        };
      };
    }