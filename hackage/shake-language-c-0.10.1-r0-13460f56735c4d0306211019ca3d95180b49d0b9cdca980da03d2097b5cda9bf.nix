{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shake-language-c";
        version = "0.10.1";
      };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2012-2016 Samplecount S.L.";
      maintainer = "stefan@samplecount.com";
      author = "";
      homepage = "https://github.com/samplecount/shake-language-c";
      url = "";
      synopsis = "Utilities for cross-compiling with Shake";
      description = "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @C@, @C++@ and @ObjC@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.";
      buildType = "Simple";
    };
    components = {
      "shake-language-c" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.fclabels)
          (hsPkgs.process)
          (hsPkgs.shake)
          (hsPkgs.split)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.shake)
            (hsPkgs.shake-language-c)
          ];
        };
        "spectests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.shake)
            (hsPkgs.shake-language-c)
          ];
        };
      };
    };
  }