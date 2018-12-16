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
      specVersion = "1.18";
      identifier = {
        name = "wai-route";
        version = "1.0.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Roman S. Borschel";
      maintainer = "Roman S. Borschel <roman@pkaboo.org>";
      author = "Roman S. Borschel";
      homepage = "";
      url = "";
      synopsis = "WAI middleware for path-based request routing with captures.";
      description = "WAI middleware for path-based request routing with captures,\nincluding further utilities for processing query strings and\nrequest headers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.pattern-trie)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "wai-route-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.pattern-trie)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-route)
          ];
        };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }