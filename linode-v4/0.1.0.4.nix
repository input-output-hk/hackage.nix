{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linode-v4";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "philneaton95@gmail.com";
        author = "Phil Eaton";
        homepage = "https://github.com/eatonphil/linode-haskell";
        url = "";
        synopsis = "Haskell wrapper for the Linode v4 API";
        description = "";
        buildType = "Simple";
      };
      components = {
        linode-v4 = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.linode-v4
            ];
          };
        };
      };
    }