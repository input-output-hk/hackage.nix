{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-elm";
        version = "0.0.2.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.MissingH)
        ];
      };
      tests = {
        "language-elm-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-elm)
            (hsPkgs.HUnit)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }