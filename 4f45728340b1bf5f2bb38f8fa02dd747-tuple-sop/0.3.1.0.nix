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
      specVersion = "1.10";
      identifier = {
        name = "tuple-sop";
        version = "0.3.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 Ferdinand van Walree";
      maintainer = "ferdinandvwalree@gmail.com";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/tuple-sop#readme";
      url = "";
      synopsis = "functions on n-ary tuples using generics-sop";
      description = "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.";
      buildType = "Simple";
    };
    components = {
      "tuple-sop" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
        ];
      };
      tests = {
        "tuple-sop-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.generics-sop)
            (hsPkgs.tuple-sop)
          ];
        };
      };
    };
  }