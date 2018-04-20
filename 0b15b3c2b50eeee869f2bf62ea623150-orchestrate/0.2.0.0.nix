{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-specs = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "orchestrate";
          version = "0.2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "erochest@gmail.com";
        author = "Eric Rochester";
        homepage = "";
        url = "";
        synopsis = "An API client for http://orchestrate.io/.";
        description = "";
        buildType = "Simple";
      };
      components = {
        orchestrate = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.wreq
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.errors
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.transformers
          ];
        };
        tests = {
          orchestrate-specs = {
            depends  = [
              hsPkgs.base
              hsPkgs.orchestrate
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.wreq
              hsPkgs.errors
            ];
          };
        };
      };
    }