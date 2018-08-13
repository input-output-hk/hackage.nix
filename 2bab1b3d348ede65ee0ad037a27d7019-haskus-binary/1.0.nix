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
      specVersion = "1.20";
      identifier = {
        name = "haskus-binary";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2017";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org/system";
      url = "";
      synopsis = "Haskus binary format manipulation";
      description = "A set of types and tools to manipulate binary data, memory, etc. In\nparticular to interface Haskell data types with foreign data types (C\nstructs, unions, enums, etc.).";
      buildType = "Simple";
    };
    components = {
      "haskus-binary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskus-utils)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskus-binary)
            (hsPkgs.haskus-utils)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "bench-BitReverse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskus-binary)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }