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
      specVersion = "1.23";
      identifier = {
        name = "HasCacBDD";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "malvin@w4eg.de";
      author = "Malvin Gattinger";
      homepage = "https://github.com/m4lvin/HasCacBDD";
      url = "";
      synopsis = "Haskell bindings for CacBDD";
      description = "Haskell bindings for CacBDD, a Binary Decision Diagram (BDD) package with dynamic cache management.\nOriginal C++ code from <http://kailesu.net/CacBDD> and a C wrapper are included.";
      buildType = "Custom";
    };
    components = {
      "HasCacBDD" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
        ];
        libs = [
          (pkgs."stdc++")
          (pkgs."CacBDD")
        ];
      };
      tests = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HasCacBDD)
          ];
        };
        "basics" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HasCacBDD)
          ];
        };
        "tautologies" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HasCacBDD)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }