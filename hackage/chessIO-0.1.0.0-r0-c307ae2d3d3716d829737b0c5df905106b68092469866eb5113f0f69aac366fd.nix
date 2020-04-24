{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chessIO"; version = "0.1.0.0"; };
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
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "cboard" = {
          depends = [
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."chessIO" or ((hsPkgs.pkgs-errors).buildDepError "chessIO"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "perft" = {
          depends = [
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."chessIO" or ((hsPkgs.pkgs-errors).buildDepError "chessIO"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }