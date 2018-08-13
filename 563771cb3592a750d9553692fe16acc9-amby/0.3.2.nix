{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "amby";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/jsermeno/amby#readme";
      url = "";
      synopsis = "Statistical data visualization";
      description = "<<https://travis-ci.org/jsermeno/amby.svg?branch=master>>\n<<https://img.shields.io/badge/language-Haskell-blue.svg>>\n<<http://img.shields.io/badge/license-BSD3-brightgreen.svg>>\n\n<<https://cloud.githubusercontent.com/assets/197051/20435959/262da202-ad7c-11e6-99e4-b6348cab0898.png>>\n<<https://cloud.githubusercontent.com/assets/197051/20435962/2796c380-ad7c-11e6-9cc8-0fbc74ba259a.png>>\n<<https://cloud.githubusercontent.com/assets/197051/20435968/2a059e52-ad7c-11e6-8f8d-1fd648dfcf4b.png>>\n\nA statistics visualization library built on top of\n<https://github.com/timbod7/haskell-chart Chart> inspired by\n<https://github.com/mwaskom/seaborn Seaborn>. Amby provides\na high-level interface to quickly display attractive\nvisualizations. Amby also provides tools to display Charts\nfrom both Amby and the Chart package within GHCi.\n\nFor examples visit the\n<https://github.com/jsermeno/amby#readme README>";
      buildType = "Simple";
    };
    components = {
      "amby" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.Chart-cairo)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.Chart)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.statistics)
          (hsPkgs.colour)
          (hsPkgs.scientific)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.either)
          (hsPkgs.pretty-display)
          (hsPkgs.process)
          (hsPkgs.exceptions)
          (hsPkgs.data-default)
          (hsPkgs.mwc-random)
          (hsPkgs.foldl)
          (hsPkgs.datasets)
          (hsPkgs.cassava)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "amby-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.amby)
            (hsPkgs.doctest)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "amby-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.amby)
            (hsPkgs.statistics)
          ];
        };
      };
    };
  }