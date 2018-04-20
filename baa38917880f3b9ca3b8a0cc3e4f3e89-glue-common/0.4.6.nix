{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glue-common";
          version = "0.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "github@futurenotfound.com";
        author = "Sean Parsons";
        homepage = "";
        url = "";
        synopsis = "Make better services and clients.";
        description = "Common types and base functions used in the glue family of libraries.";
        buildType = "Simple";
      };
      components = {
        glue-common = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.lifted-base
            hsPkgs.time
            hsPkgs.monad-control
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.text
          ];
        };
        tests = {
          glue-common-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.glue-common
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.lifted-base
              hsPkgs.time
              hsPkgs.monad-control
              hsPkgs.unordered-containers
              hsPkgs.hashable
              hsPkgs.ekg-core
              hsPkgs.text
              hsPkgs.async
            ];
          };
        };
      };
    }