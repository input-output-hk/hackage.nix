{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chatty";
          version = "0.6";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "marvin.cohrs@gmx.net";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "Some monad transformers and typeclasses for abstraction of global dependencies.";
        description = "Some monad transformers and typeclasses abstracting global dependencies, like Text in- and output (incl. here-strings, pipes, recorders and file-redirections on a per-function scope),\nprocess spawning, time and random number retrieval. Later also: Filesystem access, database access, authentication and privilege escalation (passing-through IO actions).";
        buildType = "Simple";
      };
      components = {
        chatty = {
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
          ];
        };
      };
    }