{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "resourcet";
          version = "1.1.7.2";
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
        resourcet = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.exceptions
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.resourcet
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.lifted-base
              hsPkgs.transformers
            ];
          };
        };
      };
    }