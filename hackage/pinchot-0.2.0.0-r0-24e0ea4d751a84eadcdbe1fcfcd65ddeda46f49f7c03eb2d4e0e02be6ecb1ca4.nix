{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      executables = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "pinchot";
        version = "0.2.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.Earley)
        ];
      };
      exes = {
        "print-postal-grammar" = {
          depends  = pkgs.lib.optionals (flags.executables) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.Earley)
          ];
        };
        "postal-parser" = {
          depends  = pkgs.lib.optionals (flags.executables) [
            (hsPkgs.pretty-show)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.Earley)
          ];
        };
      };
    };
  }