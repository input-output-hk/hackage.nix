{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hs-captcha";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 Dan Knapp";
        maintainer = "dankna@gmail.com";
        author = "Dan Knapp";
        homepage = "http://www.dankna.com/software/";
        url = "";
        synopsis = "Generate images suitable for use as CAPTCHAs in online web-form security.";
        description = "Generates images suitable for use as CAPTCHAs in online web-form security.  Does not\nintegrate with any web framework; simply exports a function that creates the image\nitself as a ByteString (containing a PNG), and the correct answer to the challenge as a\nString.  HS-Captcha is designed to be as simple as possible to integrate in other\nframeworks.";
        buildType = "Simple";
      };
      components = {
        "hs-captcha" = {
          depends  = [
            hsPkgs.gd
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.base
          ];
        };
      };
    }