{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nix-derivation";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Parse and render *.drv files";
        description = "Use this package to parse and render Nix derivation files (i.e. *.drv files)\n\nThis package also provides a @pretty-derivation@ executable which reads a\nderivation on standard input and outputs the pretty-printed Haskell\nrepresentation on standard output";
        buildType = "Simple";
      };
      components = {
        nix-derivation = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          pretty-derivation = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.pretty-show
              hsPkgs.text
              hsPkgs.nix-derivation
            ];
          };
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.nix-derivation
              hsPkgs.text
            ];
          };
          property = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.nix-derivation
              hsPkgs.QuickCheck
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.criterion
              hsPkgs.nix-derivation
              hsPkgs.text
            ];
          };
        };
      };
    }