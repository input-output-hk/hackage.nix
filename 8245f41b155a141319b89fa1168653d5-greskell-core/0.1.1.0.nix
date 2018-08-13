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
        name = "greskell-core";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/greskell/";
      url = "";
      synopsis = "Haskell binding for Gremlin graph query language - core data types and tools";
      description = "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).\nSee [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.\n\nThis package contains only core data types and tools used commonly by other related packages.";
      buildType = "Simple";
    };
    components = {
      "greskell-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.greskell-core)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
          ];
        };
      };
    };
  }