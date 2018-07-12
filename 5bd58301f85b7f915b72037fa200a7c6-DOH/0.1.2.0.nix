{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "DOH";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "yigitozkavci8@gmail.com";
        author = "Yiğit Özkavcı";
        homepage = "";
        url = "";
        synopsis = "Complete API bindings for DigitalOcean API V2";
        description = "Complete API bindings for DigitalOcean API V2\n\nTo get started, see @Network.DigitalOcean@ module below.";
        buildType = "Simple";
      };
      components = {
        "DOH" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.http-client-tls
            hsPkgs.bytestring
            hsPkgs.uri
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.time
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "do-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.http-client-tls
              hsPkgs.bytestring
              hsPkgs.uri
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.aeson-casing
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.interpolatedstring-perl6
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }