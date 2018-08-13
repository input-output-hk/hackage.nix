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
        name = "language-elm";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Elias Lawson-Fox";
      maintainer = "eliaslfox@gmail.com";
      author = "Elias Lawson-Fox";
      homepage = "https://github.com/eliaslfox/language-elm#readme";
      url = "";
      synopsis = "Generate elm code";
      description = "Generate elm code from an ast";
      buildType = "Simple";
    };
    components = {
      "language-elm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
        ];
      };
      tests = {
        "language-elm-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-elm)
            (hsPkgs.pretty)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }