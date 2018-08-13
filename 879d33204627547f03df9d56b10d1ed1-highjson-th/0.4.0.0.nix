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
        name = "highjson-th";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "(c) 2017 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/highjson";
      url = "";
      synopsis = "Template Haskell helpers for highjson specs";
      description = "Template Haskell helpers for highjson specs";
      buildType = "Simple";
    };
    components = {
      "highjson-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.highjson)
          (hsPkgs.highjson-swagger)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.swagger2)
        ];
      };
      tests = {
        "highjson-th-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.highjson)
            (hsPkgs.highjson-swagger)
            (hsPkgs.highjson-th)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.swagger2)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }