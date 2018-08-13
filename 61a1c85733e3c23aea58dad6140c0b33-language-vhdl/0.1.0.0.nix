{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-vhdl";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/markus-git/language-vhdl";
      url = "";
      synopsis = "VHDL AST and pretty printer in Haskell";
      description = "VHDL AST and pretty printer according to the VHDL language reference manual (2000 Edition).\nWorking on code generator.";
      buildType = "Simple";
    };
    components = {
      "language-vhdl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
        ];
      };
    };
  }