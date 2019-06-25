{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "semver-range"; version = "0.2.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "anelson@narrativescience.com";
      author = "Allen Nelson";
      homepage = "";
      url = "";
      synopsis = "An implementation of semver and semantic version ranges.";
      description = "Provides parsing of semvers and range indicators, as well as logic such as version ordering and determining whether a given version falls in a given range.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.parsec)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }