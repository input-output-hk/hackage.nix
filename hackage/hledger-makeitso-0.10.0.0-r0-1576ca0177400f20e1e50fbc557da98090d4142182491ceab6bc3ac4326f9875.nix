{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hledger-makeitso"; version = "0.10.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2018 Andreas Pauley";
      maintainer = "Andreas Pauley <hledger-makeitso@pauley.org.za>";
      author = "Andreas Pauley <hledger-makeitso@pauley.org.za>";
      homepage = "https://github.com/apauley/hledger-makeitso#readme";
      url = "";
      synopsis = "An hledger workflow focusing on automated statement import and classification.";
      description = "Please see the README on GitHub at <https://github.com/apauley/hledger-makeitso#readme>";
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
        "hledger-makeitso" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hledger-makeitso)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        };
      tests = {
        "hledger-makeitso-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.hledger-makeitso)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        };
      };
    }