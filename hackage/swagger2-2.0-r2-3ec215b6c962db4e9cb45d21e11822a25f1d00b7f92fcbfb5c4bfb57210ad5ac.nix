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
        name = "swagger2";
        version = "2.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
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