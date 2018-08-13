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
      specVersion = "1.8";
      identifier = {
        name = "lucid";
        version = "2.9.10";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2017 Chris Done";
      maintainer = "chrisdone@gmail.com, oleg.grenrus@iki.fi";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/lucid";
      url = "";
      synopsis = "Clear to write, read and edit DSL for HTML";
      description = "Clear to write, read and edit DSL for HTML.\n\n* Names are consistent, and do not conflict with base or are keywords (all have suffix @_@)\n\n* Same combinator can be used for attributes and elements (e.g. 'style_')\n\n* For more, read <https://chrisdone.com/posts/lucid the blog post>\n\nSee the \"Lucid\" module for more documentation.";
      buildType = "Simple";
    };
    components = {
      "lucid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.hashable)
          (hsPkgs.mmorph)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lucid)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.bifunctors)
            (hsPkgs.text)
            (hsPkgs.mtl)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.lucid)
          ];
        };
        "bench-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.lucid)
          ];
        };
      };
    };
  }