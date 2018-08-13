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
        name = "comark-syntax";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2014, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Definitions of AST that represents a Commonmark (markdown) document.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "comark-syntax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
        ];
      };
    };
  }