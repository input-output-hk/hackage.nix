{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "chuchu";
        version = "0.1.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2012 Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      maintainer = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      author = "Marco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      homepage = "http://github.com/marcotmarcot/chuchu";
      url = "";
      synopsis = "Behaviour Driven Development like Cucumber for Haskell";
      description = "Chuchu is a system similar to Ruby's Cucumber for Behaviour Driven\nDevelopment.  It works with a language similar to Cucumber's Gherkin, which is\nparsed using package abacate.";
      buildType = "Simple";
    };
    components = {
      "chuchu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.cmdargs)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.abacate)
        ];
      };
      tests = {
        "environment" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.chuchu)
            (hsPkgs.HUnit)
          ];
        };
        "calculator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.chuchu)
            (hsPkgs.HUnit)
          ];
        };
        "prefix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.chuchu)
            (hsPkgs.HUnit)
          ];
        };
        "multiple_scenarios" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.chuchu)
            (hsPkgs.HUnit)
          ];
        };
        "background_and_multiple_scenarios" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.chuchu)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }