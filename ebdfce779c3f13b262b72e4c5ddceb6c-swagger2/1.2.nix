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
        name = "swagger2";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, GetShopTV";
      maintainer = "nickolay@getshoptv.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/GetShopTV/swagger2";
      url = "";
      synopsis = "Swagger 2.0 data model";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "swagger2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.lens)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.swagger2)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.lens)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }