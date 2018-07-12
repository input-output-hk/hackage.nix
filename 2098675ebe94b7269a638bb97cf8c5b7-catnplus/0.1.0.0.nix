{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "catnplus";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Richard Cook";
        maintainer = "rcook@rcook.org";
        author = "Richard Cook";
        homepage = "https://github.com/rcook/catnplus#readme";
        url = "";
        synopsis = "Simple tool to display text files with line numbers and paging";
        description = "Simple tool to display text files with line numbers and paging";
        buildType = "Simple";
      };
      components = {
        exes = {
          "catnplus" = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.optparse-applicative
              hsPkgs.template-haskell
              hsPkgs.terminal-size
              hsPkgs.transformers
              hsPkgs.vcs-revision
            ];
          };
        };
      };
    }