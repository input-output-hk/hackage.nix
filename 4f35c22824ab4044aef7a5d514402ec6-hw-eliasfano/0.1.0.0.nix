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
      specVersion = "1.22";
      identifier = {
        name = "hw-eliasfano";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-eliasfano#readme";
      url = "";
      synopsis = "Elias-Fano";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-eliasfano" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-int)
          (hsPkgs.hw-prim)
          (hsPkgs.safe)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-eliasfano-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-eliasfano)
            (hsPkgs.hw-int)
            (hsPkgs.hw-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }