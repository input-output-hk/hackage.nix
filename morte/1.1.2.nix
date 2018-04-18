{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "morte";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "A bare-bones calculus of constructions";
        description = "Morte is a typed, purely functional, and strongly normalizing\nintermediate language designed for whole-program super-optimization.  Use\nthis library to type-check, optimize, parse, pretty-print, serialize and\ndeserialize expressions in this intermediate language.\n\nThis library also installs an executable that you can use to type-check and\noptimize a @morte@ program.\n\n\"Morte.Core\" contains the core calculus of constructions for this language\n\n\"Morte.Lexer\" contains the @alex@-generated lexer for Morte\n\n\"Morte.Parser\" contains the @happy@-generated parser for Morte\n\nRead \"Morte.Tutorial\" to learn how to use this library";
        buildType = "Simple";
      };
      components = {
        morte = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.lens-family-core
            hsPkgs.pipes
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          morte = {
            depends  = [
              hsPkgs.base
              hsPkgs.morte
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.morte
              hsPkgs.text
            ];
          };
        };
      };
    }