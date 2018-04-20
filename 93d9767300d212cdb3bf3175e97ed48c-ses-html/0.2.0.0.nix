{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ses-html";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "David Johnson";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "Send HTML formatted emails using Amazon's SES REST API with blaze";
        description = "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell";
        buildType = "Simple";
      };
      components = {
        ses-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.cryptohash
            hsPkgs.http-streams
            hsPkgs.HsOpenSSL
            hsPkgs.old-locale
            hsPkgs.tagsoup
            hsPkgs.time
          ];
        };
      };
    }