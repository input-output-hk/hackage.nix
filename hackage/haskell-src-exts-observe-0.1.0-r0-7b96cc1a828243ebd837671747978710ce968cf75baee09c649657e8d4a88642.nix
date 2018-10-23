{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-src-exts-observe";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/haskell-src-exts-observe";
      url = "";
      synopsis = "Observable orphan instances for haskell-src-exts";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskell-src-exts-observe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.Hoed)
        ];
      };
    };
  }