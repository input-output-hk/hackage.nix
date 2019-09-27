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
      identifier = { name = "html-parse"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/html-parse";
      url = "";
      synopsis = "A high-performance HTML tokenizer";
      description = "This package provides a fast and reasonably robust HTML5 tokenizer built\nupon the @attoparsec@ library. The parsing strategy is based upon the HTML5\nparsing specification with few deviations.\n\nFor instance,\n\n>>> parseTokens \"<div><h1 class=widget>Hello World</h1><br/>\"\n[TagOpen \"div\" [],\nTagOpen \"h1\" [Attr \"class\" \"widget\"],\nContentText \"Hello World\",\nTagClose \"h1\",\nTagSelfClose \"br\" []]\n\nThe package targets similar use-cases to the venerable @tagsoup@ library,\nbut is significantly more efficient, achieving parsing speeds of over 80\nmegabytes per second on modern hardware and typical web documents.\nHere are some typical performance numbers taken from parsing a Wikipedia\narticle of moderate length:\n\n@\nbenchmarking Forced/tagsoup fast Text\ntime                 186.1 ms   (175.3 ms .. 194.6 ms)\n0.999 R²   (0.995 R² .. 1.000 R²)\nmean                 191.7 ms   (188.9 ms .. 198.3 ms)\nstd dev              5.053 ms   (1.092 ms .. 6.809 ms)\nvariance introduced by outliers: 14% (moderately inflated)\n\nbenchmarking Forced/tagsoup normal Text\ntime                 189.7 ms   (182.8 ms .. 197.7 ms)\n0.999 R²   (0.998 R² .. 1.000 R²)\nmean                 196.5 ms   (193.1 ms .. 202.1 ms)\nstd dev              5.481 ms   (2.141 ms .. 7.383 ms)\nvariance introduced by outliers: 14% (moderately inflated)\n\nbenchmarking Forced/html-parser\ntime                 15.81 ms   (15.75 ms .. 15.89 ms)\n1.000 R²   (1.000 R² .. 1.000 R²)\nmean                 15.72 ms   (15.66 ms .. 15.77 ms)\nstd dev              140.9 μs   (113.6 μs .. 174.5 μs)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."html-parse" or (buildDepError "html-parse"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }