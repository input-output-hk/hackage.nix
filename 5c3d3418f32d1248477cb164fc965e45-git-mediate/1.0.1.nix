{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "git-mediate";
          version = "1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "https://github.com/Peaker/git-mediate";
        url = "";
        synopsis = "Remove trivial conflict markers in a git repository";
        description = "Remove trivial conflict markers in a git repository";
        buildType = "Simple";
      };
      components = {
        exes = {
          "git-mediate" = {
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