{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "data-serializer";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-serializer";
      url = "";
      synopsis = "Common API for serialization libraries";
      description = "This package provides a common API for serialization libraries like\n<http://hackage.haskell.org/package/binary binary> and\n<http://hackage.haskell.org/package/cereal cereal>.";
      buildType = "Simple";
    };
    components = {
      "data-serializer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.data-endian)
          (hsPkgs.parsers)
          (hsPkgs.split)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.data-serializer)
          ];
        };
      };
    };
  }