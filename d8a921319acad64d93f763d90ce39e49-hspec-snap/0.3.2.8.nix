{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-snap";
          version = "0.3.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/hspec-snap";
        url = "";
        synopsis = "A library for testing with Hspec and the Snap Web Framework";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hspec-snap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.digestive-functors
            hsPkgs.hspec
            hsPkgs.hspec-core
            hsPkgs.hxt
            hsPkgs.HandsomeSoup
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          "test-hspec-snap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.digestive-functors
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hxt
              hsPkgs.HandsomeSoup
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.hspec-snap
            ];
          };
        };
      };
    }