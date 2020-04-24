{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "inchworm"; version = "1.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Inchworm Development Team";
      homepage = "https://github.com/discus-lang/inchworm";
      url = "";
      synopsis = "Simple parser combinators for lexical analysis.";
      description = "Parser combinator framework specialized to lexical analysis.\nTokens are specified via simple fold functions, and we include\nbaked in source location handling.\nComes with matchers for standard lexemes like integers,\ncomments, and Haskell style strings with escape handling.\nNo dependencies other than the Haskell 'base' library.\nIf you want to parse expressions instead of tokens then try\ntry the @parsec@ or @attoparsec@ packages, which have more\ngeneral purpose combinators.";
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