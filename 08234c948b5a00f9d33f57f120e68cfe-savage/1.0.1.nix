{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "savage";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Cartwright <dcartwright@layer3com.com>";
        author = "Daniel Cartwright";
        homepage = "https://github.com/chessai/savage";
        url = "";
        synopsis = "re-export of the random generators from Hedgehog";
        description = "re-export of the random generators from Hedgehog:\n<https://github.com/hedgehogqa>";
        buildType = "Simple";
      };
      components = {
        savage = {
          depends  = ([
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.concurrent-output
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.lifted-async
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.pretty-show
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.wl-pprint-annotated
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }