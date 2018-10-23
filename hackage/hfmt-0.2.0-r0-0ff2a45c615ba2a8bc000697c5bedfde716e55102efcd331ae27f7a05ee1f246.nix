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
        version = "0.2.0";
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
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.conduit-combinators)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hindent)
          (hsPkgs.hlint)
          (hsPkgs.HUnit)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.pretty)
          (hsPkgs.stylish-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hfmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.hfmt)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.optparse-applicative)
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