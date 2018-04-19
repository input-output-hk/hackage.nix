{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bluemix-sdk";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/bluemix-sdk#readme";
        url = "";
        synopsis = "Bindings to Bluemix APIs";
        description = "Bindings to Bluemix APIs";
        buildType = "Simple";
      };
      components = {
        bluemix-sdk = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.http-client
          ];
        };
      };
    }