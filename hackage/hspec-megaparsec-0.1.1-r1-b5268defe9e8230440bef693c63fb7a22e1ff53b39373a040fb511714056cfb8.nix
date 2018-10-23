{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hspec-megaparsec";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Mark Karpov <markkarpov@opmbx.org>";
      homepage = "https://github.com/mrkkrp/hspec-megaparsec";
      url = "";
      synopsis = "Utility functions for testing Megaparsec parsers with Hspec";
      description = "Utility functions for testing Megaparsec parsers with Hspec.";
      buildType = "Simple";
    };
    components = {
      "hspec-megaparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec-expectations)
          (hsPkgs.megaparsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
          ];
        };
      };
    };
  }