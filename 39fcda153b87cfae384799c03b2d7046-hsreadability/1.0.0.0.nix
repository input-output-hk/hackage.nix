{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsreadability";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Alexey Shmalko <rasen.dubi@gmail.com>";
        author = "Alexey Shmalko <rasen.dubi@gmail.com>, Nikolay Tsutsarin <leluch.contacts@gmail.com>";
        homepage = "http://github.com/rasendubi/hsreadability";
        url = "";
        synopsis = "Access to the Readability API.";
        description = "This package provides Haskell bindings to the\n<http://www.readability.com/> API.";
        buildType = "Simple";
      };
      components = {
        "hsreadability" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.http-conduit
            hsPkgs.bytestring
            hsPkgs.authenticate-oauth
            hsPkgs.http-types
            hsPkgs.xsd
          ];
        };
        tests = {
          "test-hsreadability" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsreadability
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.file-embed
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }