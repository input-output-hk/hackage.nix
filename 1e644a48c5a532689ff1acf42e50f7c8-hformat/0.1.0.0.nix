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
        name = "hformat";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr Ruchkin";
      homepage = "http://github.com/mvoidex/hformat";
      url = "";
      synopsis = "Simple Haskell formatting";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hformat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.hformat)
          ];
        };
      };
    };
  }