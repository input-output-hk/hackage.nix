{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Ebnf2ps"; version = "1.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Thiemann <thiemann@acm.org>";
      author = "Peter Thiemann <thiemann@acm.org>";
      homepage = "http://www.informatik.uni-freiburg.de/~thiemann/haskell/ebnf2ps/";
      url = "";
      synopsis = "Peter's Syntax Diagram Drawing Tool";
      description = "Ebnf2ps generates nice looking syntax diagrams in EPS\nand FIG format from EBNF specifications and from yacc,\nbison, and Happy input grammars. The diagrams can be\nimmediatedly included in TeX/LaTeX documents and in\ntexts created with other popular document preparation\nsystems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ebnf2ps" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }