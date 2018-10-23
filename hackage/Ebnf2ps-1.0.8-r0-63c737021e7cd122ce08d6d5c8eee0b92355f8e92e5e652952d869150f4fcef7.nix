{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Ebnf2ps";
        version = "1.0.8";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.array)
            (hsPkgs.haskell98)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }