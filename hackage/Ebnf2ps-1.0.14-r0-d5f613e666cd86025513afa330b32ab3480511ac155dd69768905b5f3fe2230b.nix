{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Ebnf2ps"; version = "1.0.14"; };
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
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.array)
            ];
          build-tools = [ ((hsPkgs.buildPackages).happy) ];
          };
        };
      };
    }