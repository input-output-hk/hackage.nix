{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ripple-federation";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2014 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/ripple-federation-haskell";
        url = "";
        synopsis = "Utilities and types to work with the Ripple federation protocol";
        description = "To resolve federation names, etc.";
        buildType = "Simple";
      };
      components = {
        "ripple-federation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.errors
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.http-streams
            hsPkgs.io-streams
            hsPkgs.unexceptionalio
            hsPkgs.base58address
          ];
        };
      };
    }