{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chessIO"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/chessIO#readme";
      url = "";
      synopsis = "Basic chess library";
      description = "A simple library for generating legal chess moves. Also includes a module for communication with external processes that speak the UCI (Universal Chess Interface) protocol, a PGN parser/pretty printer, and Polyglot opening book support. On top of that, provides a console frontend program (cboard) that can be used to interactively play against UCI engines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.file-embed)
          (hsPkgs.megaparsec)
          (hsPkgs.o-clock)
          (hsPkgs.parser-combinators)
          (hsPkgs.prettyprinter)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "cboard" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.file-embed)
            (hsPkgs.haskeline)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.o-clock)
            (hsPkgs.parser-combinators)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "pgnio" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.containers)
            (hsPkgs.file-embed)
            (hsPkgs.megaparsec)
            (hsPkgs.o-clock)
            (hsPkgs.parser-combinators)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "polyplay" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.containers)
            (hsPkgs.file-embed)
            (hsPkgs.megaparsec)
            (hsPkgs.o-clock)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parser-combinators)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "perft" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.megaparsec)
            (hsPkgs.o-clock)
            (hsPkgs.parallel)
            (hsPkgs.parser-combinators)
            (hsPkgs.prettyprinter)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }