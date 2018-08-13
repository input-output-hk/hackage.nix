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
      specVersion = "1.18";
      identifier = {
        name = "sort-by-pinyin";
        version = "2018.4.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/sort-by-pinyin";
      url = "";
      synopsis = "sort by pinyin";
      description = "Sort Simplified Chinese by pinyin";
      buildType = "Simple";
    };
    components = {
      "sort-by-pinyin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.air)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.here)
        ];
      };
    };
  }