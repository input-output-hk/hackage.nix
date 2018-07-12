{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nofib-analyze";
          version = "7.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "1997 - 2005 Simon Marlow";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "Simon Marlow";
        homepage = "https://ghc.haskell.org/trac/ghc/wiki/Building/RunningNoFib";
        url = "";
        synopsis = "Parse and compare nofib runs";
        description = "The nofib benchmark suite is the standard benchmark suite\nto measure Haskell compilers. The nofib-analyze program can parse\nthe logs of nofib runs, and compare their output, producing tables in text,\nLaTeX or HTML format.\n\nnofib-analyze is readily available in your GHC source tree in\n@nofib/nofib-analyse@, so usually, you will not need this packages. It might\nhowever be handy when you need to analyze log files without having a checked-out\ncopy of GHC around.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "nofib-analyze" = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-compat
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }