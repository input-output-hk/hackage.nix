{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "morte";
        version = "1.4.1";
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
      "morte" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.Earley)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.managed)
          (hsPkgs.pipes)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.transformers)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "morte" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.morte)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.morte)
            (hsPkgs.text)
          ];
        };
      };
    };
  }