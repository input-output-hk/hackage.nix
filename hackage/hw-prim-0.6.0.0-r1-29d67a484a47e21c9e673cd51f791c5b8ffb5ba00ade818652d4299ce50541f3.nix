{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bounds-checking-enabled = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-prim";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-prim#readme";
      url = "";
      synopsis = "Primitive functions and data types";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mmap)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-prim-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }