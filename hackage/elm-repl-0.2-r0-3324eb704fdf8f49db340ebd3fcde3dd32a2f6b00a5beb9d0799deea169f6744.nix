{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "elm-repl";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2013 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "https://github.com/evancz/elm-repl#elm-repl";
      url = "";
      synopsis = "a REPL for Elm";
      description = "A read-eval-print-loop (REPL) for evaluating Elm expressions,\ndefinitions, ADTs, and module imports. This tool is meant to\nhelp you play with small expressions and interact with\nfunctions deep inside of larger projects.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-repl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.Elm)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }