{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Ebnf2ps"; version = "1.0.15"; };
      license = "BSD-3-Clause";
      copyright = "1993-2014";
      maintainer = "Franklin Chen <franklinchen@franklinchen.com>";
      author = "Peter Thiemann <thiemann@acm.org>";
      homepage = "https://github.com/FranklinChen/Ebnf2ps";
      url = "";
      synopsis = "Peter's Syntax Diagram Drawing Tool";
      description = "Ebnf2ps generates nice looking syntax diagrams in EPS\nand FIG format from EBNF specifications and from yacc,\nbison, and Happy input grammars. The diagrams can be\nimmediatedly included in TeX/LaTeX documents and in\ntexts created with other popular document preparation\nsystems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ebnf2ps" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            ];
          buildable = true;
          };
        };
      };
    }