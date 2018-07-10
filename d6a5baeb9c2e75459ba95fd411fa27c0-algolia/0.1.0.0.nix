{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "algolia";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Ian Duncan";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "https://github.com/iand675/algolia#readme";
        url = "";
        synopsis = "A client implementing the Algolia search API";
        description = "";
        buildType = "Simple";
      };
      components = {
        algolia = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-iproute
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.data-has
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.iproute
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.retry
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.uri-templater
            hsPkgs.vector
          ];
        };
        tests = {
          algolia-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.algolia
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-discover
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }