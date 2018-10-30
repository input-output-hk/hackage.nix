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
        name = "hpack-dhall";
        version = "0.3.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Phil de Joux <phil.dejoux@blockscope.com>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/blockscope/hpack-dhall#readme";
      url = "";
      synopsis = "Dhall support for Hpack";
      description = "This package allows you to use the Dhall configuration language to specify Haskell packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpack-dhall" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.hpack)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.hpack)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.megaparsec)
            (hsPkgs.mockery)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }