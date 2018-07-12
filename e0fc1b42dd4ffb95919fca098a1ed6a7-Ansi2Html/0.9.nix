{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Ansi2Html";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jens@janzzstimmpfle.de";
        author = "Jens Stimpfle";
        homepage = "http://janzzstimmpfle.de/~jens/software/Ansi2Html/";
        url = "";
        synopsis = "Convert ANSI Terminal Sequences to nice HTML markup";
        description = "Particularly with xterm in mind, this software enables integration of terminal screen state in html pages. See project homepage for hints on how to setup xterm for it.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ansi2html" = {
            depends  = [
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.base
              hsPkgs.xhtml
            ];
          };
        };
      };
    }