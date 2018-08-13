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
        name = "comark";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark processing in pure haskell.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "comark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.comark-syntax)
          (hsPkgs.comark-parser)
          (hsPkgs.comark-html)
        ];
      };
      exes = {
        "comark-hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.comark)
          ];
        };
      };
    };
  }