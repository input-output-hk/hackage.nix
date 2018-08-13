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
      specVersion = "1.6";
      identifier = {
        name = "hothasktags";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://github.com/luqui/hothasktags";
      url = "";
      synopsis = "Generates ctags for Haskell, incorporating import lists and qualified imports";
      description = "Generation of ctags files for Haskell, with knowledge of import lists and qualified imports";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hothasktags" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }