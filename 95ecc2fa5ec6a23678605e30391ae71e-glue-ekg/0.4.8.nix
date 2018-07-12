{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glue-ekg";
          version = "0.4.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "github@futurenotfound.com";
        author = "Sean Parsons";
        homepage = "";
        url = "";
        synopsis = "Make better services and clients.";
        description = "Glue library that makes use of ekg for providing stats around services and clients.";
        buildType = "Simple";
      };
      components = {
        "glue-ekg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.glue-common
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.lifted-base
            hsPkgs.time
            hsPkgs.monad-control
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.ekg-core
            hsPkgs.text
          ];
        };
        tests = {
          "glue-ekg-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.glue-common
              hsPkgs.glue-ekg
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