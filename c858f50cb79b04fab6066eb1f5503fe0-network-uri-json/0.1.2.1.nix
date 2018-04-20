{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-uri-json";
          version = "0.1.2.1";
        };
        license = "MIT";
        copyright = "(c) 2017 Alex Brandt";
        maintainer = "alunduil@alunduil.com";
        author = "Alex Brandt";
        homepage = "https://github.com/alunduil/network-uri-json";
        url = "";
        synopsis = "FromJSON and ToJSON Instances for Network.URI";
        description = "FromJSON and ToJSON instances for Network.URI.";
        buildType = "Simple";
      };
      components = {
        network-uri-json = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.network-uri
            hsPkgs.text
          ];
        };
        tests = {
          network-uri-json-tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.network-arbitrary
              hsPkgs.network-uri
              hsPkgs.QuickCheck
              hsPkgs.test-invariant
              hsPkgs.text
            ];
          };
        };
      };
    }