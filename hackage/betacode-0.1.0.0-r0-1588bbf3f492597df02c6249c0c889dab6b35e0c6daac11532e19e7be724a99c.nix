{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "betacode"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "erochest@gmail.com";
      author = "Eric Rochester";
      homepage = "";
      url = "";
      synopsis = "A codec for beta code (http://en.wikipedia.org/wiki/Beta_Code).";
      description = "A codec for beta code (http://en.wikipedia.org/wiki/Beta_Code).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.attoparsec)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          ];
        };
      tests = {
        "betacode-specs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }