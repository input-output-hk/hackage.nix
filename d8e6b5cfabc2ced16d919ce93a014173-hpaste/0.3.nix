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
        name = "hpaste";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "http://hpaste.org";
      url = "";
      synopsis = "An online pastebin, written in Haskell.";
      description = "Haskell pastebin, using HAppS";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hpaste" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HAppS)
            (hsPkgs.xhtml)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.hscolour)
            (hsPkgs.binary)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }