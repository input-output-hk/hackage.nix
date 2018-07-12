{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "resolve-trivial-conflicts";
          version = "0.3.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "https://github.com/ElastiLotem/resolve-trivial-conflicts";
        url = "";
        synopsis = "Remove trivial conflict markers in a git repository";
        description = "Remove trivial conflict markers in a git repository";
        buildType = "Simple";
      };
      components = {
        exes = {
          "resolve-trivial-conflicts" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.Diff
              hsPkgs.ansi-terminal
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }