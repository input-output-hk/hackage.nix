{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "interpolator"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "TVision Insights";
      author = "Dan Fithian <daniel.m.fithian@gmail.com>";
      homepage = "https://github.com/tvision-insights/interpolator";
      url = "";
      synopsis = "Runtime interpolation of environment variables in records using profunctors";
      description = "Runtime interpolation of environment variables in records using profunctors. See\n`https://github.com/tvision-insights/interpolator/README.md`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.product-profunctors)
          (hsPkgs.profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.hspec)
            (hsPkgs.interpolator)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.product-profunctors)
            (hsPkgs.profunctors)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }