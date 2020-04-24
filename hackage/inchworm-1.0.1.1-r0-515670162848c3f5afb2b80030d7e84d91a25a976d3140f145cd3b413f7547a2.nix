{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "inchworm"; version = "1.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Inchworm Development Team";
      homepage = "https://github.com/DDCSF/inchworm";
      url = "";
      synopsis = "Inchworm Lexer Framework";
      description = "Parser combinator framework specialized to lexical analysis.\nTokens can be specified via simple fold functions,\nand we include baked in source location handling.\nIf you want to parse expressions instead of tokens then try\ntry the @parsec@ or @attoparsec@ packages, which have more\ngeneral purpose combinators.\nComes with matchers for standard lexemes like integers,\ncomments, and Haskell style strings with escape handling.\nNo dependencies other than the Haskell 'base' library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }