{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pokitdok";
          version = "4.1.0.2";
        };
        license = "MIT";
        copyright = "Copyright © 2014 PokitDok Inc.";
        maintainer = "gage.swenson@pokitdok.com";
        author = "Gage Swenson";
        homepage = "https://platform.pokitdok.com";
        url = "";
        synopsis = "PokitDok Platform API Client for Haskell";
        description = "PokitDok's platform gives you access to X12 and Data APIs for health insurance claims, eligibility, providers, procedure pricing and more. This API client allows for seemless integration of API calls in an Haskell module.";
        buildType = "Simple";
      };
      components = {
        "pokitdok" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base64-string
            hsPkgs.case-insensitive
            hsPkgs.time
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.HTTP
            hsPkgs.aeson
            hsPkgs.strict
            hsPkgs.directory
            hsPkgs.hex
          ];
        };
      };
    }