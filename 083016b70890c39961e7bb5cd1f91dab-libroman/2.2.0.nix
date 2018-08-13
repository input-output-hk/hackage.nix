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
        name = "libroman";
        version = "2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Alexander Hakki";
      maintainer = "ahk@ahakki.xyz";
      author = "Alexander Hakki";
      homepage = "https://ahakki.xyz";
      url = "";
      synopsis = "Roman Numerals for YOU";
      description = "Use Roman Numerals as a Numeric Datatype (sort of)";
      buildType = "Simple";
    };
    components = {
      "libroman" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
      tests = {
        "libroman-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.libroman)
          ];
        };
      };
    };
  }