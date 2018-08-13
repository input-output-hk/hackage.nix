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
      specVersion = "1.6";
      identifier = {
        name = "js-good-parts";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) by Sean Seefried";
      maintainer = "sean.seefried@gmail.com";
      author = "Sean Seefried";
      homepage = "https://github.com/sseefried/js-good-parts.git";
      url = "";
      synopsis = "Javascript: The Good Parts -- AST & Pretty Printer";
      description = "An AST for the \\\"the good parts\\\" of Javascript (as defined by Douglas Crockford)\nand a pretty printer for that AST. Designed to be the target of a code generator.\nDoes not include a parser.";
      buildType = "Simple";
    };
    components = {
      "js-good-parts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wl-pprint)
        ];
      };
    };
  }