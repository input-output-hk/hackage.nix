{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "classy-prelude-conduit";
          version = "1.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/mono-traversable#readme";
        url = "";
        synopsis = "classy-prelude together with conduit functions";
        description = "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>";
        buildType = "Simple";
      };
      components = {
        classy-prelude-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.classy-prelude
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.void
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.classy-prelude-conduit
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.transformers
            ];
          };
        };
      };
    }