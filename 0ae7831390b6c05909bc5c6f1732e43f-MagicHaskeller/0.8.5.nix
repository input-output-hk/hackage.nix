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
      specVersion = "0";
      identifier = {
        name = "MagicHaskeller";
        version = "0.8.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2009 Susumu Katayama";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
      url = "";
      synopsis = "Automatic inductive functional programmer by systematic search";
      description = "";
      buildType = "Simple";
    };
    components = {
      "MagicHaskeller" = {
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
        ];
      };
    };
  }