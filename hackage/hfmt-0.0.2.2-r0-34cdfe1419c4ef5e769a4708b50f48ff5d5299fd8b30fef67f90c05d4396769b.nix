{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hfmt";
        version = "0.0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Stiner <daniel.stiner@gmail.com>";
      author = "Daniel Stiner";
      homepage = "http://github.com/danstiner/hfmt";
      url = "";
      synopsis = "Haskell source code formatter";
      description = "Inspired by gofmt. Built using hlint, hindent, and stylish-haskell.";
      buildType = "Simple";
    };
    components = {
      "hfmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hindent)
          (hsPkgs.hlint)
          (hsPkgs.hlint)
          (hsPkgs.HUnit)
          (hsPkgs.pipes)
          (hsPkgs.stylish-haskell)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hfmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hfmt)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.Diff)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pretty)
          ];
        };
      };
      tests = {
        "self-formatting-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hfmt)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "pure-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hfmt)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }