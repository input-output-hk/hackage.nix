{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chatty";
          version = "0.7.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "chatty@mcohrs.eu";
        author = "Marvin Cohrs";
        homepage = "http://hub.darcs.net/enum/chatty";
        url = "";
        synopsis = "Some monad transformers and typeclasses for abstraction of global dependencies.";
        description = "Some monad transformers and typeclasses abstracting global dependencies, like Text in- and output (incl. here-strings, pipes, recorders and file-redirections on a per-function scope),\nprocess spawning, time and random number retrieval.\nNote that the author does not recommend using this package for new projects. Please use packages better suited for individual purpose.";
        buildType = "Simple";
      };
      components = {
        "chatty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.setenv
            hsPkgs.unix
            hsPkgs.random
            hsPkgs.time
            hsPkgs.ansi-terminal
            hsPkgs.chatty-utils
            hsPkgs.text
          ];
        };
      };
    }