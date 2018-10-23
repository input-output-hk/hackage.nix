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
        name = "haskell-src-exts-simple";
        version = "1.18.0.0";
      };
      license = "MIT";
      copyright = "2016, Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "Bertram Felgenhauer";
      homepage = "https://github.com/int-e/haskell-src-exts-simple";
      url = "";
      synopsis = "A simplified view on the haskell-src-exts AST";
      description = "This package provides a shim for haskell-src-exts (HSE), exposing the\nsame AST but without annotations.\n\nThis package is useful for synthesizing and manipulating HSE ASTs\nthat don't carry source location information. It may also aid\nin porting packages from haskell-src-exts 1.17 to 1.18, but it\nis not a drop-in replacement for the old annotation-free AST.\nSee COMPATIBILITY.md for details.\n\nSee \"Language.Haskell.Exts.Simple\" for further information.\n\n__Versioning notice__: To be able to track the haskell-src-exts version\nnumbers conveniently, the first __three__ components of the version\nwill be treated as the major version, followed by the minor version\nas usual.";
      buildType = "Simple";
    };
    components = {
      "haskell-src-exts-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }