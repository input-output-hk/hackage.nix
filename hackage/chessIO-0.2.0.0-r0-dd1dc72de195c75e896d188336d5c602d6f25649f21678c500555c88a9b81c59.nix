{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chessIO"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/chessIO#readme";
      url = "";
      synopsis = "Basic chess move generation and UCI client library";
      description = "A simple library for generating legal chess moves. Also includes a module for communication with external processes that speak the UCI (Universal Chess Interface) protocol. On top of that, provides a console frontend program (cboard) that can be used to interactively play against UCI engines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.megaparsec)
          (hsPkgs.parser-combinators)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "cboard" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.haskeline)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.parser-combinators)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "perft" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chessIO)
            (hsPkgs.directory)
            (hsPkgs.megaparsec)
            (hsPkgs.parallel)
            (hsPkgs.parser-combinators)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }