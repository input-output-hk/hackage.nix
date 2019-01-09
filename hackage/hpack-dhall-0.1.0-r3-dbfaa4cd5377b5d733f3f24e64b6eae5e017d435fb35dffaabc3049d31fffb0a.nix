{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hpack-dhall"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "https://github.com/sol/hpack-dhall#readme";
      url = "";
      synopsis = "Dhall support for Hpack";
      description = "This package allows you to use the Dhall configuration language to specify\nHaskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpack-dhall" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.hpack)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.trifecta)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.hpack)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.mockery)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.trifecta)
            ];
          };
        };
      };
    }