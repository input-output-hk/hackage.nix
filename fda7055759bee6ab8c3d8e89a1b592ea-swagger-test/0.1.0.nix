{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "swagger-test";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Rodrigo Setti. All rights reserved";
        maintainer = "rodrigosetti@gmail.com";
        author = "Rodrigo Setti";
        homepage = "https://github.com/rodrigosetti/swagger-test";
        url = "";
        synopsis = "Testing of Swagger APIs";
        description = "This package provides a library and executable tool\nthat supports testing APIs specified with Swagger. It\nallows one to generate arbitrary Swagger requests for any\ngiven specification.";
        buildType = "Simple";
      };
      components = {
        swagger-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.insert-ordered-containers
            hsPkgs.lens
            hsPkgs.scientific
            hsPkgs.swagger2
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          swagger-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.swagger-test
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.swagger2
              hsPkgs.aeson
              hsPkgs.random
            ];
          };
        };
      };
    }