let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amby"; version = "0.3.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
          (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
          (hsPkgs."Chart" or (buildDepError "Chart"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."pretty-display" or (buildDepError "pretty-display"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."datasets" or (buildDepError "datasets"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "amby-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."amby" or (buildDepError "amby"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "amby-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."amby" or (buildDepError "amby"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            ];
          buildable = true;
          };
        };
      };
    }