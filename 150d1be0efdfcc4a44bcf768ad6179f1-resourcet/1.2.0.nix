{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "resourcet";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Deterministic allocation and freeing of scarce resources.";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/resourcet>.";
        buildType = "Simple";
      };
      components = {
        "resourcet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.unliftio-core
            hsPkgs.primitive
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.resourcet
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.transformers
            ];
          };
        };
      };
    }