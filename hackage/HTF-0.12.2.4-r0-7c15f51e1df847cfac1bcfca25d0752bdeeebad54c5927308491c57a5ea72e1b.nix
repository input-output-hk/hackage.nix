{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HTF";
        version = "0.12.2.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2005-2014 Stefan Wehr";
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
        depends  = [
          (hsPkgs.Diff)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.directory)
          (hsPkgs.haskell-lexer)
          (hsPkgs.haskell-src)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.xmlgen)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "htfpp" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.cpphs)
            (hsPkgs.directory)
            (hsPkgs.haskell-lexer)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "MiscTests" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
        "TestHTF" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.regex-compat)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
        "TestThreadPools" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
      };
    };
  }