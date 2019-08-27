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
      identifier = { name = "HTF"; version = "0.12.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2005-2012 Stefan Wehr";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>";
      author = "Stefan Wehr <wehr@factisresearch.com>";
      homepage = "https://github.com/skogsbaer/HTF/";
      url = "";
      synopsis = "The Haskell Test Framework";
      description = "The Haskell Test Framework (/HTF/ for short) lets you define unit\ntests (<http://hunit.sourceforge.net>), QuickCheck properties\n(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box\ntests in an easy and convenient way. HTF uses a custom\npreprocessor that collects test definitions automatically.\nFurthermore, the preprocessor allows HTF to report failing\ntest cases with exact file name and line number information.\nAdditionally, HTF tries to produce highly readable output\nfor failing tests: for example, it colors and pretty prints expected and\nactual results and provides a diff between the two values.\n\nThe documentation of the \"Test.Framework.Tutorial\" module\nprovides a tutorial for HTF. There is also a slightly out-dated\nblog article (<http://factisresearch.blogspot.de/2011/10/new-version-of-htf-with-diffs-colors.html>)\ndemonstrating HTF's coloring, pretty-printing and diff functionality.\n\n/HEADS UP, backwards incomatibility with prior versions:/\n\nIn version 0.10.0.0, the following changes could break code compiled against version 0.9.*:\n\n* \"Test.Framework\" now longer exports all of \"Test.Framework.TestManager\" and\n\"Test.Framework.BlackBoxTest\". For modules that only define tests, no changes\nshould be necessary. However, you likely need to adjust your test runner\nmodule by importing \"Test.Framework.TestManager\" and possibly \"Test.Framework.BlackBoxTest\".\n\n* Some reorganization in \"Test.Framework.TestManager\" and related modules, introduction\nof \"Test.Framework.TestTypes\". Usually, your code should not be affected\nby these changes.\n\nStarting with version 0.9.0.0, HTF uses a new strategy\nfor collecting the testcases defined in your project\n(see \"Test.Framework.Tutorial\" for a description of this strategy).\nIf you used version 0.8.* or earlier of HTF, this /will break your build!/\nHowever, it's rather easy to bring you project in line with the new HTF\nversion. Here are the steps that will most likely resolve\nyour backwards incompatibility problems:\n\n* If a module exports the @allHTFTests@ symbol, this export must\nbe changed to @htf_thisModulesTests@.\n\n* If an import declaration of some module hides the @allHTFTests@\nsymbol, you can simply remove the hiding clause for @allHTFTests@.\n\n* If a module collects and executes tests from several other modules,\nthe collecting module has to be changed as follows: add\n@&#x7b;-&#x23; OPTIONS_GHC -F -pgmF htfpp &#x23;-&#x7d;@ to the top\nof the collecting module, import\nthe other modules with the @&#x7b;-&#x40; HTF_TESTS &#x40;-&#x7d;@\nannotation, use the symbol @htf_importedTests@ for referencing\nthe imported tests. See \"Test.Framework.Tutorial\" for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."xmlgen" or (buildDepError "xmlgen"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        };
      exes = {
        "htfpp" = {
          depends = [
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "TestHTF" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            ];
          };
        "TestThreadPools" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            ];
          };
        "MiscTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }