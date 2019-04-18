{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hledger-flow"; version = "0.11.1.2"; };
      license = "GPL-3.0-only";
      copyright = "2018 Andreas Pauley";
      maintainer = "Andreas Pauley <hledger-flow@pauley.org.za>";
      author = "Andreas Pauley <hledger-flow@pauley.org.za>";
      homepage = "https://github.com/apauley/hledger-flow#readme";
      url = "";
      synopsis = "An hledger workflow focusing on automated statement import and classification.";
      description = "Please see the README on GitHub at <https://github.com/apauley/hledger-flow#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.turtle)
          ];
        };
      exes = {
        "hledger-flow" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hledger-flow)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        };
      tests = {
        "hledger-flow-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.hledger-flow)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        };
      };
    }