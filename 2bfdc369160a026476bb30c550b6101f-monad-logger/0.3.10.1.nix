{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      template_haskell = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monad-logger";
          version = "0.3.10.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/kazu-yamamoto/logger";
        url = "";
        synopsis = "A class of monads which can log messages.";
        description = "This package uses template-haskell for determining source code locations of messages.";
        buildType = "Simple";
      };
      components = {
        monad-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.lifted-base
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.fast-logger
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.exceptions
          ] ++ pkgs.lib.optional _flags.template_haskell hsPkgs.template-haskell;
        };
      };
    }