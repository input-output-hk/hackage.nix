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
        name = "hw-prim";
        version = "0.4.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-prim#readme";
      url = "";
      synopsis = "Primitive functions and data types";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-prim" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-prim-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hw-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }