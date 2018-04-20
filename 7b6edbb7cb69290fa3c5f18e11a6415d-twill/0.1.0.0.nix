{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twill";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2012 Joseph Abrahamson, Reify Health LLC";
        maintainer = "Joseph Abrahamson <me@jspha.com>";
        author = "Joseph Abrahamson <me@jspha.com>";
        homepage = "";
        url = "";
        synopsis = "Twilio API interaction";
        description = "A little Twilio library";
        buildType = "Simple";
      };
      components = {
        twill = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.errors
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.datetime
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.attoparsec
            hsPkgs.aeson
          ];
        };
      };
    }