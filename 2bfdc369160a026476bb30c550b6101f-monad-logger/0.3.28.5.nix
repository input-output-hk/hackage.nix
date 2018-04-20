{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      template_haskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-logger";
          version = "0.3.28.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/monad-logger#readme";
        url = "";
        synopsis = "A class of monads which can log messages.";
        description = "See README and Haddocks at <https://www.stackage.org/package/monad-logger>";
        buildType = "Simple";
      };
      components = {
        monad-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
            hsPkgs.unliftio-core
          ] ++ pkgs.lib.optional _flags.template_haskell hsPkgs.template-haskell;
        };
      };
    }