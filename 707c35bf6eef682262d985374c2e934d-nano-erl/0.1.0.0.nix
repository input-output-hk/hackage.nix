{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nano-erl";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "TomMurphy";
        author = "TomMurphy";
        homepage = "";
        url = "";
        synopsis = "Small library for Erlang-style actor semantics";
        description = "A small, beginner-friendly library for Erlang-style actor semantics,\nfor coordinating concurrent processes and message passing\n\nProcesses are plain IO actions, so no monad transformers needed (no liftIO!)\n\nFor best performance, compile with:\n\n> ghc -O2 -threaded -rtsopts -with-rtsopts=-N";
        buildType = "Simple";
      };
      components = {
        nano-erl = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }