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
      specVersion = "1.16";
      identifier = {
        name = "dynamic-pp";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/dynamic-pp";
      url = "";
      synopsis = "A pretty-print library that employs a dynamic programming algorithm for optimal rendering.";
      description = "This library provides pretty-print operators similar to the set provided by the Wadler-Leijin pretty-printer.\nThe main difference, however, is that it utilizes a dynamic programming algorithm for rendering.  This slightly\nreduces the available combinators, but provides a layout engine that optimizes documents, minimizing their\nover-wrap and line count.\n\nThe dynamic programming algorithm has pathological cases that cause it to run in quadratic time; however,\ntypical use on code-like programs should see better run times.  In general, documents with many uses of the\nchoose combinator will require more time to render.\n\nThis library also provides two simpler rendering engines for uses where the full optimal layout engine is not\nnecessary.  These engines are much simpler and consume fewer resources.\n\nNOTE: This library is still in development.  It may contain bugs, performance issues, and the interface may change.";
      buildType = "Simple";
    };
    components = {
      "dynamic-pp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-builder)
          (hsPkgs.ansi-terminal)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "UnitTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hashable)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.blaze-builder)
            (hsPkgs.ansi-terminal)
            (hsPkgs.unordered-containers)
            (hsPkgs.HUnit-Plus)
          ];
        };
      };
    };
  }