{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hakyll-dhall";
        version = "0.2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hakyll-dhall#readme";
      url = "";
      synopsis = "Dhall compiler for Hakyll";
      description = "Please see the README on GitHub at <https://github.com/mstksg/hakyll-dhall#readme>";
      buildType = "Simple";
    };
    components = {
      "hakyll-dhall" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.cborg)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.dhall)
          (hsPkgs.filepath)
          (hsPkgs.hakyll)
          (hsPkgs.lens-family-core)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hakyll-dhall-test-app" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.hakyll)
            (hsPkgs.hakyll-dhall)
          ];
        };
      };
    };
  }