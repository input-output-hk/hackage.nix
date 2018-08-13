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
      specVersion = "1.6";
      identifier = {
        name = "HTF";
        version = "0.3.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2005-2010 Stefan Wehr";
      maintainer = "Stefan Wehr <mail@stefanwehr.de>";
      author = "Stefan Wehr <mail@stefanwehr.de>";
      homepage = "";
      url = "";
      synopsis = "The Haskell Test Framework";
      description = "The Haskell Test Framework (/HTF/ for short) lets you define unit\ntests (<http://hunit.sourceforge.net>), QuickCheck properties\n(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box\ntests in an easy and convenient way. The HTF uses a custom\npreprocessor that collects test definitions automatically.\nFurthermore, the preprocessor allows the HTF to report failing\ntest cases with exact file name and line number information.\n\nThe documentation of the \"Test.Framework.Tutorial\" module\nprovides a tutorial for the HTF.";
      buildType = "Simple";
    };
    components = {
      "HTF" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "htfpp" = {
          depends  = [
            (hsPkgs.cpphs)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.base)
          ];
        };
      };
    };
  }