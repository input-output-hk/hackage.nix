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
      specVersion = "1.10";
      identifier = {
        name = "cmark-sections";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cmark-sections";
      url = "";
      synopsis = "Represent cmark-parsed Markdown as a tree of sections";
      description = "Represent cmark-parsed Markdown as a tree of sections";
      buildType = "Simple";
    };
    components = {
      "cmark-sections" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.cmark)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base-prelude)
            (hsPkgs.cmark)
            (hsPkgs.cmark-sections)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }