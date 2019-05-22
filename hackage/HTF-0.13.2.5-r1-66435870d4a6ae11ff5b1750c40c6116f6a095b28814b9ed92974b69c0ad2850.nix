{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HTF"; version = "0.13.2.5"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2005-2015 Stefan Wehr";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>";
      author = "Stefan Wehr <wehr@factisresearch.com>";
      homepage = "https://github.com/skogsbaer/HTF/";
      url = "";
      synopsis = "The Haskell Test Framework";
      description = "The Haskell Test Framework (/HTF/ for short) lets you define unit\ntests (<http://hunit.sourceforge.net>), QuickCheck properties\n(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box\ntests in an easy and convenient way. HTF uses a custom\npreprocessor that collects test definitions automatically.\nFurthermore, the preprocessor allows HTF to report failing\ntest cases with exact file name and line number information.\nAdditionally, HTF tries to produce highly readable output\nfor failing tests: for example, it colors and pretty prints expected and\nactual results and provides a diff between the two values.\n\nThe documentation of the \"Test.Framework.Tutorial\" module\nprovides a tutorial for HTF. There is also a slightly out-dated\nblog article (<http://factisresearch.blogspot.de/2011/10/new-version-of-htf-with-diffs-colors.html>)\ndemonstrating HTF's coloring, pretty-printing and diff functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.haskell-src)
          (hsPkgs.directory)
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
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs))
          ];
        };
      exes = {
        "htfpp" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.cpphs)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.HTF)
            ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs))
            ];
          };
        };
      tests = {
        "MiscTests" = {
          depends = [
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            ];
          };
        "TestHTF" = {
          depends = [
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
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "TestThreadPools" = {
          depends = [ (hsPkgs.HTF) (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.random) ];
          };
        };
      };
    }