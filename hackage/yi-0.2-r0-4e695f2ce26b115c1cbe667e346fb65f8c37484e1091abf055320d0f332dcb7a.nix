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
      specVersion = "0";
      identifier = {
        name = "yi";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written and extensible in Haskell. The goal of Yi is\nto provide a flexible, powerful and correct editor core dynamically\nscriptable in Haskell.\nNote that you will need either yi-gtk or yi-vty to actually run Yi.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "yi" = {
          depends  = [
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }