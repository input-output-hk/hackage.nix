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
      specVersion = "1.14";
      identifier = {
        name = "cmark";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/commonmark-hs";
      url = "";
      synopsis = "Fast, accurate CommonMark (Markdown) parser and renderer";
      description = "This package provides Haskell bindings for\n<https://github.com/jgm/cmark libcmark>, the reference\nparser for <http://commonmark.org CommonMark>, a fully\nspecified variant of Markdown. It includes sources for\nlibcmark (0.21.0) and does not require prior installation of the\nC library.";
      buildType = "Simple";
    };
    components = {
      "cmark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "test-cmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmark)
            (hsPkgs.text)
            (hsPkgs.HUnit)
          ];
        };
      };
      benchmarks = {
        "bench-cmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.cmark)
            (hsPkgs.criterion)
            (hsPkgs.sundown)
            (hsPkgs.cheapskate)
            (hsPkgs.markdown)
            (hsPkgs.discount)
            (hsPkgs.blaze-html)
          ];
        };
      };
    };
  }