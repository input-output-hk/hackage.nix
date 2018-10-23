{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "sort-by-pinyin";
        version = "2017.10.18";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/sort-by-pinyin";
      url = "";
      synopsis = "Sort Simplified Chinese by PinYin";
      description = "";
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
        ];
      };
    };
  }