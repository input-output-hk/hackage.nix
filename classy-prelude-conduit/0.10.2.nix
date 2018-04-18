{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "classy-prelude-conduit";
          version = "0.10.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/classy-prelude";
        url = "";
        synopsis = "conduit instances for classy-prelude";
        description = "conduit instances for classy-prelude";
        buildType = "Simple";
      };
      components = {
        classy-prelude-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.classy-prelude
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.resourcet
            hsPkgs.void
            hsPkgs.bytestring
            hsPkgs.system-fileio
            hsPkgs.conduit-combinators
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.classy-prelude-conduit
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.conduit
            ];
          };
        };
      };
    }