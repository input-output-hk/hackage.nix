{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executables = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "pinchot";
          version = "0.14.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/pinchot";
        url = "";
        synopsis = "Build parsers and ASTs for context-free grammars";
        description = "Pinchot provides a simple language that you use to write a Haskell\nprogram that describes a context-free grammar.  When run, this program\ncreates a value representing the grammar.  Using this value, you can\nautomatically generate data types corresponding to the grammar,\nas well as an Earley parser to parse strings in that grammar.\n\nFor more documentation, see the Haddocks for the main Pinchot module.";
        buildType = "Simple";
      };
      components = {
        pinchot = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.Earley
            hsPkgs.lens
          ];
        };
        exes = {
          print-postal-grammar = {
            depends  = pkgs.lib.optionals _flags.executables [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.lens
            ];
          };
          postal-parser = {
            depends  = pkgs.lib.optionals _flags.executables [
              hsPkgs.pretty-show
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.lens
            ];
          };
          parrot = {
            depends  = pkgs.lib.optionals _flags.executables [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.lens
            ];
          };
          parakeet = {
            depends  = pkgs.lib.optionals _flags.executables [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.template-haskell
              hsPkgs.Earley
              hsPkgs.lens
            ];
          };
        };
      };
    }